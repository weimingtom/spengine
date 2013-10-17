////////////////////////////////////////////////
// Name: mix_vivid_light.mm
// Author:方枫杰
// Date:2012-8-14
// Desc:亮光，如果上层颜色（光源）亮度高于50%灰，图像将被降低对比度并且变亮；
// 如果上层颜色（光源）亮度低于50%灰，图像会被提高对比度并且变暗。
///////////////////////////////////////////////

sampler tex : register(S0);
texture Tex1;

sampler targetTex = sampler_state
{
	Texture = (Tex1);
	MinFilter = LINEAR;
	MagFilter = LINEAR;
	MipFilter = LINEAR;
};

float4 Main(float4 color : COLOR, float2 texCoord : TEXCOORD0) : COLOR
{
	float4 tex_color = tex2D(tex, texCoord);
	float4 target_tex_color = tex2D(targetTex, texCoord);
	
	float4 out_color = target_tex_color;

	if(tex_color.r == 0)
		out_color.r = 0;
	else if(tex_color.r <= 0.5)
		out_color.r = 1 - (1 - target_tex_color.r) / (2 * tex_color.r);		 
	else if(tex_color.r > 0.5)
		out_color.r = target_tex_color.r / (2 * (1 - tex_color.r));
	
	if(tex_color.g == 0)
		out_color.g = 0;
	else if(tex_color.g <= 0.5)
		out_color.g = 1 - (1 - target_tex_color.g) /(2 * tex_color.g);
	else if(tex_color.g > 0.5)
		out_color.g = target_tex_color.g / (2 * (1 - tex_color.g));
	
	if(tex_color.b == 0)
		out_color.b = 0;
	else if(tex_color.b <= 0.5)
		out_color.b = 1 - (1 - target_tex_color.b) / (2 * tex_color.b);
	else if(tex_color.b > 0.5)
		out_color.b = target_tex_color.b / (2 * (1 - tex_color.b));
    
	return out_color;
}

technique T0
{
	pass P0
	{
		PixelShader = compile ps_2_0 Main();
	}
}