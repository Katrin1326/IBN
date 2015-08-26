// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.


#include "stdafx.h"
#include "mcticker.h"

/////////////////////////////////////////////////////////////////////////////
// CMcTicker

IMPLEMENT_DYNCREATE(CMcTicker, CWnd)

/////////////////////////////////////////////////////////////////////////////
// CMcTicker properties

long CMcTicker::GetBgColor()
{
	long result;
	GetProperty(0x1, VT_I4, (void*)&result);
	return result;
}

void CMcTicker::SetBgColor(long propVal)
{
	SetProperty(0x1, VT_I4, propVal);
}

long CMcTicker::GetSpeed()
{
	long result;
	GetProperty(0x2, VT_I4, (void*)&result);
	return result;
}

void CMcTicker::SetSpeed(long propVal)
{
	SetProperty(0x2, VT_I4, propVal);
}

/////////////////////////////////////////////////////////////////////////////
// CMcTicker operations

BOOL CMcTicker::AddHead(LPCTSTR text, long color, LPCTSTR url)
{
	BOOL result;
	static BYTE parms[] =
		VTS_BSTR VTS_I4 VTS_BSTR;
	InvokeHelper(0x3, DISPATCH_METHOD, VT_BOOL, (void*)&result, parms,
		text, color, url);
	return result;
}

BOOL CMcTicker::AddTail(LPCTSTR text, long color, LPCTSTR url)
{
	BOOL result;
	static BYTE parms[] =
		VTS_BSTR VTS_I4 VTS_BSTR;
	InvokeHelper(0x4, DISPATCH_METHOD, VT_BOOL, (void*)&result, parms,
		text, color, url);
	return result;
}

BOOL CMcTicker::SetText(LPCTSTR text, long color, LPCTSTR url)
{
	BOOL result;
	static BYTE parms[] =
		VTS_BSTR VTS_I4 VTS_BSTR;
	InvokeHelper(0x5, DISPATCH_METHOD, VT_BOOL, (void*)&result, parms,
		text, color, url);
	return result;
}

void CMcTicker::Scroll(long bEnable)
{
	static BYTE parms[] =
		VTS_I4;
	InvokeHelper(0x6, DISPATCH_METHOD, VT_EMPTY, NULL, parms,
		 bEnable);
}

CString CMcTicker::GetStringUrl(long x, long y)
{
	CString result;
	static BYTE parms[] =
		VTS_I4 VTS_I4;
	InvokeHelper(0x7, DISPATCH_METHOD, VT_BSTR, (void*)&result, parms,
		x, y);
	return result;
}

BOOL CMcTicker::Load(const VARIANT& url)
{
	BOOL result;
	static BYTE parms[] =
		VTS_VARIANT;
	InvokeHelper(0x8, DISPATCH_METHOD, VT_BOOL, (void*)&result, parms,
		&url);
	return result;
}

long CMcTicker::LoadFromString(LPCTSTR Data)
{
	long result;
	static BYTE parms[] =
		VTS_BSTR;
	InvokeHelper(0x9, DISPATCH_METHOD, VT_I4, (void*)&result, parms,
		Data);
	return result;
}

long CMcTicker::SetFont(long height, LPCTSTR name, long weight)
{
	long result;
	static BYTE parms[] =
		VTS_I4 VTS_BSTR VTS_I4;
	InvokeHelper(0xa, DISPATCH_METHOD, VT_I4, (void*)&result, parms,
		height, name, weight);
	return result;
}
