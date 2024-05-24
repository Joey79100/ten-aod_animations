struct AnimatedFrameUV
{
	float2 TopLeft;
	float2 TopRight;
	float2 BottomRight;
	float2 BottomLeft;
};

cbuffer AnimatedBuffer : register(b6)
{
	AnimatedFrameUV AnimFrames[128];
	uint NumAnimFrames;
	uint FPS;
	uint Type;
	uint padding2;
}