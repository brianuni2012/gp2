#pragma once
#include "Win32Window.h"
#include <d3d10.h>
#include <D3DX10.H>

class CGameApplication
{
public:
	CGameApplication(void);
	~CGameApplication(void);

	bool init();
	void run();

private:
	bool initGraphics();
	bool initWindow();

	void render();
	void update();

private:
	ID3D10Device * m_pD3D10Device;
	IDXGISwapChain * m_pSwanChain;
	ID3D10RenderTargetView * mpRenderTargetView;
	CWin32Window * mpWindow;
};