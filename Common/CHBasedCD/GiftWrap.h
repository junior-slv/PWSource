/////////////////////////////////////////////////
//	Created by He wenfeng 2004-8-17
//  A derived class from CConvexHullAlgorithm:
//  Gift Wrap Algorithm
//
//  Revised by He wenfeng 2004-12-2
//		Add some data and function to support 
//		the 2D Convex Hull!
//
/////////////////////////////////////////////////

#ifndef	_GIFTWRAP_H_
#define _GIFTWRAP_H_

#include "EdgeStack.h"
#include "ConvexHullAlgorithm.h"	// Added by ClassView
#include "ConvexPolytope.h"


namespace CHBasedCD
{

//-------------------------------------------------------------------------
// added by wenfeng, Jun 18, 2009
/*
	When we start the GiftWrap algorithm, we should make sure that the 
vertices passed are unique from each other. This is important since many 
3D content authoring tools will create and export almost uniform-position
vertices.

	This function will process the vertices passed in and clean up those
overlapped vertices...
*/
int RemoveCloseVertices(A3DVECTOR3* Vertices, int iVertexNum, float fDistThresh = 0.0003f);

//-------------------------------------------------------------------------
class CGiftWrap : public CConvexHullAlgorithm  
{
	//��Ԫ����
	friend bool CConvexPolytope::Init(const CGiftWrap& gw);

public:
	enum { HULL_2D, HULL_3D };				//͹�������ͣ���ά����ά

	CGiftWrap();
	virtual ~CGiftWrap();
	
	//����ȫ��״̬
	void Reset();						
	
	//����ִ�еĺ���
	void Start();
	void GoOneStep();
	bool IsOver() const;

	CGiftWrap(A3DVECTOR3* pVertexes,int vNum);
	bool ExceptionOccur(){ return m_bExceptionOccur || ( ! ValidConvexHull() );}

//set && get operations
	void SetInitHSDistThresh(float fInitHSDistThresh) {m_fInitHSDistThresh=fInitHSDistThresh;}
	int GetHullType() const { return m_nHullType; }
	
	//Ӧ����2D͹�������
	AArray<int,int>* GetCHVertecies() const { if(m_Planes.GetSize()==1) return m_Planes[0]; else return NULL;}

//override
	virtual void ComputeConvexHull();

protected:
	
	//----------------------------------------------------------
	// Revised by Wenfeng, Aug. 18, 2011
	// add vRefNormal to handle the co-planar case...
	Edge SearchFirstEdge(const A3DVECTOR3& vRefNormal = A3DVECTOR3(0.0f, 1.0f, 0.0f));
	
	int EVRelation(const Edge& e, int v);
	bool IsTriVsCoLinear(int v1,int v2,int v3);
	void SortByDist(int v, AArray<int,int> & vList);
	void DealCoPlanarV(Edge e, AArray<int,int> & CoPlanarVertexes);		
	bool DealE(Edge e);
	void SelectivePushStack(const Edge& e);
	void ResetSameVertices();			//����ȫ��״̬��������������ͬ�Ķ��㼯�ϵ�

	//check if is validate convex hull plane, yx Aug. 29, 2011 
	bool ValidateCHPlane(const CHalfSpace& hs);
	void InternalComputeConvexHull();

//Attributes
protected:

	CEdgeStack		m_EdgeStack;			//һ���߶�ջ
	Edge			m_eFirst;				//�ҵ��ĵ�һ����	
	bool			m_bExceptionOccur;		//��������г����쳣�������������д���
	
	float			m_fInitHSDistThresh;	//����͹���ĳ�ʼHalfspace������ֵ
	
	int				m_nHullType;			//�������͹�������͡���ά����ά

	float           m_fIdenticalPosErr;     //�������

public:
	bool ValidConvexHull();			// �������ɵ�͹���Ƿ����

	bool SaveVerticesToFile(const char* szFileName);

};

//�ú���Ϊȫ�ֺ���
bool LoadVerticesFromFile(const char *szFileName,int& nVNum,A3DVECTOR3* & pVertices );

}	// end namespace


#endif // _GIFTWRAP_H_
