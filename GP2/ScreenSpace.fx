float4 VS( float4 Pos : POSITION ) : SV_POSITION
{
	return Pos;
}


float4 PS( float4 Pos : SV_POSITION ) : SV_TARGET
{
	return float4( 1.0f, 1.0f, 0,0f, 1.0f); //Yellow, with Alpha = 1
}

technique10 Render
{
	pass P0
		{
			setVertexShader( CompileShader( vs_4_0, VS() ));
			setGeometryShader( NULL );
			setPixelShader( CompileShader( ps_4_),PS() ));

		}
}