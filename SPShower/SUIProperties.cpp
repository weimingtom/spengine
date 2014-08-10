#include "StdAfx.h"
#include "SUIProperties.h"


SUIProperties::SUIProperties(void)
{
	rectangle = SRectangle(0, 0, 0, 0);
	rotation = 0;
	rotationCenter = D3DXVECTOR2(0, 0);
	backgroundImage = NULL;
	backgroundColor = D3DXCOLOR(0,0,0,0);
	transparency = 1;
	layer = 0;
	backgroundX = 0;
	backgroundY = 0;
	backgroundPosition = Normal;
	backgroundMode = Positioning;
	//padding = D3DXVECTOR4(0,0,0,0);
}


SUIProperties::~SUIProperties(void)
{
}

SPString SUIProperties::BackgroundModeToString(BackgroundMode mode)
{
	if(mode == Positioning)
	{
		return L"position";
	}
	else if (mode == Fill)
	{
		return L"fill";
	}
	else if (mode == FitWidth)
	{
		return L"fitWidth";
	}
	else if (mode == FitHeight)
	{
		return L"fitHeight";
	}
	else if (mode == FitMin)
	{
		return L"fitMin";
	}
	else if (mode == FitMax)
	{
		return L"fitMax";
	}

	return L"undefined";
}

SPString SUIProperties::BackgroundPositionToString( BackgroundPosition mode )
{
	if(mode == Normal)
	{
		return L"normal";
	}
	else if (mode == TopLeft)
	{
		return L"topLeft";
	}
	else if (mode == TopRight)
	{
		return L"topRight";
	}
	else if (mode == BottomLeft)
	{
		return L"bottomLeft";
	}
	else if (mode == BottomRight)
	{
		return L"bottomRight";
	}
	else if (mode == BottomCenter)
	{
		return L"bottomCenter";
	}
	else if (mode == CenterLeft)
	{
		return L"centerLeft";
	}
	else if (mode == CenterRight)
	{
		return L"centerRight";
	}
	else if (mode == CenterAll)
	{
		return L"centerAll";
	}

	return L"undefined";
}

SUIProperties::BackgroundMode SUIProperties::StringToBackgroundMode( SPString modeName )
{
	if(SPStringHelper::EqualsIgnoreCase(modeName, L"Position"))
	{
		return Positioning;
	}
	else if (SPStringHelper::EqualsIgnoreCase(modeName, L"Fill"))
	{
		return Fill;
	}
	else if (SPStringHelper::EqualsIgnoreCase(modeName, L"FitWidth"))
	{
		return FitWidth;
	}
	else if (SPStringHelper::EqualsIgnoreCase(modeName, L"FitHeight"))
	{
		return FitHeight;
	}
	else if (SPStringHelper::EqualsIgnoreCase(modeName, L"FitMin"))
	{
		return FitMin;
	}
	else if (SPStringHelper::EqualsIgnoreCase(modeName, L"FitMax"))
	{
		return FitMax;
	}

	SPLogHelper::WriteLog(L"[SpeShow] Invalid Background Mode: " + modeName + L". Defaulting to 'Position'.");

	return Positioning;
}

SUIProperties::BackgroundPosition SUIProperties::StringToBackgroundPosition( SPString modeName )
{
	if(SPStringHelper::EqualsIgnoreCase(modeName, L"Normal"))
	{
		return Normal;
	}
	else if (SPStringHelper::EqualsIgnoreCase(modeName, L"TopLeft"))
	{
		return TopLeft;
	}
	else if (SPStringHelper::EqualsIgnoreCase(modeName, L"TopRight"))
	{
		return TopRight;
	}
	else if (SPStringHelper::EqualsIgnoreCase(modeName, L"BottomLeft"))
	{
		return BottomLeft;
	}
	else if (SPStringHelper::EqualsIgnoreCase(modeName, L"BottomRight"))
	{
		return BottomRight;
	}
	else if (SPStringHelper::EqualsIgnoreCase(modeName, L"BottomCenter"))
	{
		return BottomCenter;
	}
	else if (SPStringHelper::EqualsIgnoreCase(modeName, L"CenterLeft"))
	{
		return CenterLeft;
	}
	else if (SPStringHelper::EqualsIgnoreCase(modeName, L"CenterRight"))
	{
		return CenterRight;
	}
	else if (SPStringHelper::EqualsIgnoreCase(modeName, L"CenterAll"))
	{
		return CenterAll;
	}

	SPLogHelper::WriteLog(L"[SpeShow] Invalid Background Position: " + modeName + L". Defaulting to 'Normal'.");

	return Normal;
}


