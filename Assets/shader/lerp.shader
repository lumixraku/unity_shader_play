// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/lerp"
{
    Properties
    {
        _MainTex("Texture", 2D) = "white" {}
        _SecondTex("Second Texture", 2D) = "white" {}
        _Tween("Tween", Range(0, 1)) = 0
    }

    SubShader
    {
        Tags
        {
            "Queue" = "Transparent"
            "PreviewType" = "Plane"
        }

        Pass
        {
            Blend SrcAlpha OneMinusSrcAlpha

            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float4 vertex : SV_POSITION;
                float2 uv : TEXCOORD0;
            };

            v2f vert(appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                return o;
            }

            sampler2D _MainTex;
            sampler2D _SecondTex;
            float _Tween;

            float4 frag(v2f i) : SV_Target
            {

                
                float4 color1 = tex2D(_MainTex, i.uv);
                float4 color2 = tex2D(_SecondTex, i.uv);

// 在unity3D中经常用线性插值函数Lerp()来在两者之间插值，两者之间可以是两个材质之间、两个向量之间、两个浮点数之间、两个颜色之间，其函数原型如下：

// Material.Lerp 插值

// function Lerp (start : Material, end : Material, t : float) : void

// 在两个材质之间插值

 


                float4 color = lerp(color1, color2, _Tween);

                return color;
            }
            ENDCG
        }
    }
}