/*
	AObject.h
	˵����AObject��������������ϵ�ĸ������ṩ��RTTI�Ĺ��ܺʹ��л��Ĺ��ܡ�
	������Ҫע����ǣ���Ҫ��AObject�Ĵ��л���AData�Ĵ��л��ֿ�������
	����AData������ִ��л��ķ�ʽ�������ڱ༭����������Ϸ�У���
	�˴��л���������Ӧ����AData���������ࡣ

	����AObject�����ֳ�Ա������������Ҫ�޲����Ĺ��캯�������Գ�ֵΪ0��
	�������κ�һ��AObject���������Ҫ�ڹ�������ʹ�ã���Ӧ����һ��Ψһ
	�����������֡����ڿ��ܲ����ַ�����ķ������洢�ĵ��еĴ������ַ�����
	��AObject����������ֱ���������һ������ָ�룬����SetName�Ĳ���������ָ����
	
	Modified By ���� Jun/21/2004,�����˶�̬���Խӿ� 
	Modified By ���Ǵ� Dec/31/2009,�޸���APropertyObject�Ľӿڣ��޸���AProperty���ȡAVariant���ݵķ�ʽ
*/

#pragma once
#include <assert.h>
#include <vector.h>
#include "AProperty.h"

class APropertyObject
{
protected:
	int m_version;
	abase::vector<int> m_StateList;	

public:
//���Բ�������
	AProperty * GetProperty(int index)
	{
		return Properties(index);
	}
	AProperty * GetProperty(const char * name,int *index = NULL)
	{
		return Properties(name,index);
	}

	AVariant& GetPropVal(int nIndex)
	{
		return Impl_GetPropVal(nIndex);
	}

	void SetPropVal(int nIndex, const AVariant& var)
	{
		Impl_SetPropVal(nIndex, var);
	}

	int GetPropertiesCount()
	{
		return PropertiesCount();
	}
	
	bool InitStateTable(); //��ʼ������״̬��	
	void SetState(int index, int state) {m_StateList[index] = state;} //��������״̬	
	int GetState(int index) {return m_StateList[index];} //��ȡ����״̬

protected:

	APropertyObject():m_version(0){}
	virtual int PropertiesCount() {return 0;}
	virtual AProperty * Properties(int index) {return NULL;}
	virtual AProperty * Properties(const char * name,int *index = NULL) { return NULL; }
	virtual AVariant& Impl_GetPropVal(int nIndex) = 0;
	virtual void Impl_SetPropVal(int nIndex, const AVariant& var) = 0;
};

// ��̬���Խӿ�
class ADynPropertyObject : public APropertyObject
{
public:
	ADynPropertyObject();
	virtual ~ADynPropertyObject() {}

protected:
// data
	typedef AVariantProperty VarPropTemp;
	abase::vector<VarPropTemp> m_PropLst;
	abase::vector<AVariant> m_VarLst;

// functions
protected:

	virtual int PropertiesCount();
	virtual AProperty * Properties(int index);
	virtual AProperty * Properties(const char * name, int *index = NULL);
	virtual AVariant& Impl_GetPropVal(int nIndex);
	virtual void Impl_SetPropVal(int nIndex, const AVariant& var);
	bool is_valid() const;

public:

	void DynAddProperty(const AVariant& varValue,
		const char* szName, ASet* pSet = NULL, ARange* pRange = NULL,
		int way = WAY_DEFAULT, const char* szPath = NULL, bool isVisable = true, int iState = 0, const char* szDesc = 0);

	const char* GetPropDesc(int nIndex);
	void SetPropDesc(int nIndex, const char* szDesc);
	void SetPropName(int nIndex, const char* name);
	void Clear();

};

struct CUSTOM_FUNCS
{
	virtual ~CUSTOM_FUNCS() {}
	virtual BOOL CALLBACK OnActivate(void) = 0;
	virtual LPCTSTR CALLBACK OnGetShowString(void) const = 0;
	virtual AVariant CALLBACK OnGetValue(void) const = 0;
	virtual void CALLBACK OnSetValue(const AVariant& var) = 0;
};