xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.19
// Website: http://www.unwrap3d.com
// Time: Mon Nov 23 12:37:54 2009

// Start of Templates

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template FVFData {
 <b6e70a0e-8ef9-4e83-94ad-ecc8b0c04897>
 DWORD dwFVF;
 DWORD nDWords;
 array DWORD data[nDWords];
}

template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

template XSkinMeshHeader {
 <3CF169CE-FF7C-44ab-93C0-F78F62D172E2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template SkinWeights {
 <6F0D123B-BAD2-4167-A0D0-80224F25FABB>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}

template AnimTicksPerSecond {
 <9E415A43-7BA6-4a73-8743-B73D47E88476>
 DWORD AnimTicksPerSecond;
}

AnimTicksPerSecond {
 4800;
}

// Start of Frames

Frame Body {
   FrameTransformMatrix {
    1.000000, 0.000000, 0.000000, 0.000000,
    0.000000, 1.000000, 0.000000, 0.000000,
    0.000000, 0.000000, 1.000000, 0.000000,
    0.000000, 0.000000, 0.000000, 1.000000;;
   }

   Mesh staticMesh {
    94;
    68.592598; 62.668018; 0.592110;,
    65.032394; 106.146217; 0.592110;,
    68.592598; 62.668018; -0.698997;,
    65.032394; 106.146217; -0.698997;,
    -69.605003; 103.871323; 0.592110;,
    -68.418297; 63.029518; 0.592110;,
    -69.605003; 103.871323; -0.698891;,
    -68.418297; 63.029518; -0.698997;,
    -47.218601; 105.155418; 0.592110;,
    -47.218601; 105.155418; -0.698997;,
    -44.232399; 0.724461; 0.591805;,
    -44.232399; 0.724468; -0.699295;,
    -64.258904; 0.048538; 0.591805;,
    -64.258904; 0.048550; -0.699295;,
    -46.018299; 62.816620; 0.592110;,
    -46.018299; 62.816620; -0.698997;,
    -29.957699; 103.956116; 0.592110;,
    -29.957699; 103.956116; -0.698891;,
    -26.071201; 0.433319; 0.591805;,
    -26.071201; 0.433331; -0.699295;,
    -28.747101; 62.652420; 0.592110;,
    -28.747101; 62.652420; -0.698997;,
    -16.882200; 104.186920; 0.592110;,
    -16.882200; 104.187019; -0.698891;,
    -12.987801; 0.308968; 0.591805;,
    -12.987801; 0.308979; -0.699295;,
    -15.663700; 62.528118; 0.592110;,
    -15.663700; 62.528118; -0.698997;,
    14.586689; 104.980820; 0.592110;,
    14.586689; 104.980820; -0.698891;,
    26.641399; 104.812721; 0.592110;,
    26.641399; 104.812721; -0.698891;,
    17.610100; 0.136650; 0.591805;,
    31.987499; 0.000000; 0.591805;,
    17.610100; 0.136658; -0.699295;,
    31.987499; 0.000008; -0.699295;,
    15.824249; 62.228821; 0.592110;,
    30.201599; 62.092117; 0.592110;,
    15.824249; 62.228821; -0.698891;,
    30.201599; 62.092117; -0.698891;,
    39.704498; 62.234718; 0.592110;,
    36.144302; 106.098221; 0.592110;,
    36.144302; 106.098221; -0.698997;,
    41.490398; 0.142548; -0.699295;,
    41.490398; 0.142540; 0.591805;,
    39.704498; 62.234718; -0.698891;,
    52.539600; 62.427219; 0.592110;,
    48.979401; 106.290222; 0.592110;,
    48.979401; 106.290222; -0.698997;,
    54.325401; 0.335068; -0.699295;,
    54.325401; 0.335060; 0.591805;,
    52.539600; 62.427219; -0.698997;,
    70.378494; 0.575840; -0.699295;,
    70.378494; 0.575829; 0.591805;,
    -66.536201; 110.842216; 3.272804;,
    -73.079697; 111.006218; 3.272804;,
    -66.536201; 110.842216; -3.272797;,
    -73.079697; 111.006218; -3.272797;,
    -64.714798; 1.241779; 3.272804;,
    -66.536201; 110.842216; 3.272804;,
    -64.714798; 1.241779; -3.272797;,
    -66.536201; 110.842216; -3.272797;,
    -71.258301; 1.406128; 3.272804;,
    -64.714798; 1.241779; 3.272804;,
    -71.258301; 1.406128; -3.272797;,
    -64.714798; 1.241779; -3.272797;,
    -73.079697; 111.006218; 3.272804;,
    -71.258301; 1.406128; 3.272804;,
    -73.079697; 111.006218; -3.272797;,
    -71.258301; 1.406128; -3.272797;,
    -64.714798; 1.241779; 3.272804;,
    -71.258301; 1.406128; 3.272804;,
    -71.258301; 1.406128; -3.272797;,
    -64.714798; 1.241779; -3.272797;,
    71.258301; 110.842216; 3.272804;,
    64.714798; 111.006218; 3.272804;,
    71.258301; 110.842216; -3.272797;,
    64.714798; 111.006218; -3.272797;,
    73.079697; 1.241779; 3.272804;,
    71.258301; 110.842216; 3.272804;,
    73.079697; 1.241779; -3.272797;,
    71.258301; 110.842216; -3.272797;,
    66.536194; 1.406128; 3.272804;,
    73.079697; 1.241779; 3.272804;,
    66.536194; 1.406128; -3.272797;,
    73.079697; 1.241779; -3.272797;,
    64.714798; 111.006218; 3.272804;,
    66.536194; 1.406128; 3.272804;,
    64.714798; 111.006218; -3.272797;,
    66.536194; 1.406128; -3.272797;,
    73.079697; 1.241779; 3.272804;,
    66.536194; 1.406128; 3.272804;,
    66.536194; 1.406128; -3.272797;,
    73.079697; 1.241779; -3.272797;;
    128;
    3;2, 1, 0;,
    3;2, 3, 1;,
    3;6, 5, 4;,
    3;6, 7, 5;,
    3;9, 4, 8;,
    3;9, 6, 4;,
    3;12, 11, 10;,
    3;12, 13, 11;,
    3;8, 5, 14;,
    3;8, 4, 5;,
    3;7, 9, 15;,
    3;7, 6, 9;,
    3;16, 9, 8;,
    3;16, 17, 9;,
    3;10, 19, 18;,
    3;10, 11, 19;,
    3;20, 8, 14;,
    3;20, 16, 8;,
    3;15, 17, 21;,
    3;15, 9, 17;,
    3;22, 17, 16;,
    3;22, 23, 17;,
    3;18, 25, 24;,
    3;18, 19, 25;,
    3;26, 16, 20;,
    3;26, 22, 16;,
    3;21, 23, 27;,
    3;21, 17, 23;,
    3;28, 23, 22;,
    3;28, 29, 23;,
    3;30, 29, 28;,
    3;30, 31, 29;,
    3;34, 33, 32;,
    3;34, 35, 33;,
    3;24, 34, 32;,
    3;24, 25, 34;,
    3;36, 22, 26;,
    3;36, 28, 22;,
    3;37, 28, 36;,
    3;37, 30, 28;,
    3;29, 39, 38;,
    3;29, 31, 39;,
    3;27, 29, 38;,
    3;27, 23, 29;,
    3;41, 37, 40;,
    3;41, 30, 37;,
    3;42, 30, 41;,
    3;42, 31, 30;,
    3;44, 35, 43;,
    3;44, 33, 35;,
    3;45, 31, 42;,
    3;45, 39, 31;,
    3;47, 40, 46;,
    3;47, 41, 40;,
    3;48, 41, 47;,
    3;48, 42, 41;,
    3;50, 43, 49;,
    3;50, 44, 43;,
    3;51, 42, 48;,
    3;51, 45, 42;,
    3;1, 46, 0;,
    3;1, 47, 46;,
    3;3, 47, 1;,
    3;3, 48, 47;,
    3;53, 49, 52;,
    3;53, 50, 49;,
    3;2, 48, 3;,
    3;2, 51, 48;,
    3;33, 36, 32;,
    3;33, 37, 36;,
    3;44, 37, 33;,
    3;44, 40, 37;,
    3;12, 7, 13;,
    3;12, 5, 7;,
    3;10, 5, 12;,
    3;10, 14, 5;,
    3;34, 39, 35;,
    3;34, 38, 39;,
    3;35, 45, 43;,
    3;35, 39, 45;,
    3;13, 15, 11;,
    3;13, 7, 15;,
    3;11, 21, 19;,
    3;11, 15, 21;,
    3;18, 14, 10;,
    3;18, 20, 14;,
    3;24, 20, 18;,
    3;24, 26, 20;,
    3;19, 27, 25;,
    3;19, 21, 27;,
    3;25, 38, 34;,
    3;25, 27, 38;,
    3;32, 26, 24;,
    3;32, 36, 26;,
    3;50, 40, 44;,
    3;50, 46, 40;,
    3;43, 51, 49;,
    3;43, 45, 51;,
    3;53, 46, 50;,
    3;53, 0, 46;,
    3;49, 2, 52;,
    3;49, 51, 2;,
    3;52, 0, 53;,
    3;52, 2, 0;,
    3;56, 55, 54;,
    3;56, 57, 55;,
    3;60, 59, 58;,
    3;60, 61, 59;,
    3;64, 63, 62;,
    3;64, 65, 63;,
    3;68, 67, 66;,
    3;68, 69, 67;,
    3;54, 71, 70;,
    3;54, 55, 71;,
    3;57, 73, 72;,
    3;57, 56, 73;,
    3;76, 75, 74;,
    3;76, 77, 75;,
    3;80, 79, 78;,
    3;80, 81, 79;,
    3;84, 83, 82;,
    3;84, 85, 83;,
    3;88, 87, 86;,
    3;88, 89, 87;,
    3;74, 91, 90;,
    3;74, 75, 91;,
    3;77, 93, 92;,
    3;77, 76, 93;;

   MeshNormals {
    94;
    0.831075; 0.038590; 0.554820;,
    0.654395; 0.380154; 0.653644;,
    0.598650; 0.038401; -0.800090;,
    0.402248; 0.825238; -0.396457;,
    -0.450611; 0.795841; 0.404458;,
    -0.599429; -0.024801; 0.800044;,
    -0.831737; 0.380300; -0.404457;,
    -0.706037; -0.037912; -0.707160;,
    0.002695; 0.446488; 0.894786;,
    0.004825; 0.799407; -0.600770;,
    0.000395; -0.707013; 0.707200;,
    0.012125; -0.706901; -0.707208;,
    -0.633724; -0.700270; 0.328658;,
    -0.391494; -0.432599; -0.812152;,
    -0.000000; -0.000003; 1.000000;,
    0.000001; 0.000003; -1.000000;,
    0.028527; 0.706233; 0.707404;,
    0.008021; 0.706773; -0.707395;,
    -0.008258; -0.707062; 0.707103;,
    -0.009796; -0.707033; -0.707113;,
    -0.000000; -0.000002; 1.000000;,
    0.000000; 0.000004; -1.000000;,
    -0.014266; 0.706942; 0.707127;,
    -0.016050; 0.706941; -0.707090;,
    -0.004895; -0.707094; 0.707103;,
    -0.005807; -0.707077; -0.707112;,
    -0.000000; -0.000002; 1.000000;,
    0.000001; 0.000003; -1.000000;,
    -0.008602; 0.706985; 0.707176;,
    0.000535; 0.599935; -0.800049;,
    -0.053833; 0.892311; 0.448200;,
    -0.033344; 0.552637; -0.832755;,
    -0.004198; -0.554688; 0.832048;,
    -0.000945; -0.707087; 0.707126;,
    -0.006054; -0.799973; -0.600006;,
    0.004830; -0.707062; -0.707135;,
    -0.000000; -0.000002; 1.000000;,
    0.000000; -0.000002; 1.000000;,
    0.000001; 0.000004; -1.000000;,
    0.000000; 0.000003; -1.000000;,
    0.000000; -0.000002; 1.000000;,
    -0.038678; 0.705486; 0.707668;,
    -0.066776; 0.703382; -0.707668;,
    0.010603; -0.707023; -0.707111;,
    0.010605; -0.707031; 0.707103;,
    -0.000005; 0.000002; -1.000000;,
    0.000000; -0.000002; 1.000000;,
    0.000703; 0.707084; 0.707129;,
    -0.004937; 0.707067; -0.707129;,
    0.010604; -0.707023; -0.707111;,
    0.010605; -0.707031; 0.707103;,
    -0.000003; 0.000002; -1.000000;,
    0.826078; -0.386502; -0.410136;,
    0.344248; -0.659030; 0.668710;,
    0.011205; 0.447073; 0.894427;,
    0.022410; 0.894146; 0.447214;,
    0.022410; 0.894146; -0.447214;,
    0.011205; 0.447073; -0.894427;,
    0.999862; 0.016616; -0.000000;,
    0.999862; 0.016616; -0.000000;,
    0.999862; 0.016616; -0.000000;,
    0.999862; 0.016616; -0.000000;,
    -0.025108; -0.999685; -0.000000;,
    -0.025108; -0.999685; -0.000000;,
    -0.025108; -0.999685; -0.000000;,
    -0.025108; -0.999685; -0.000000;,
    -0.999862; -0.016616; -0.000000;,
    -0.999862; -0.016616; -0.000000;,
    -0.999862; -0.016616; -0.000000;,
    -0.999862; -0.016616; -0.000000;,
    0.000000; 0.000000; 1.000000;,
    0.000000; 0.000000; 1.000000;,
    0.000000; 0.000000; -1.000000;,
    0.000000; 0.000000; -1.000000;,
    0.011205; 0.447073; 0.894427;,
    0.022410; 0.894146; 0.447214;,
    0.022410; 0.894146; -0.447214;,
    0.011205; 0.447073; -0.894427;,
    0.999862; 0.016616; -0.000000;,
    0.999862; 0.016616; -0.000000;,
    0.999862; 0.016616; -0.000000;,
    0.999862; 0.016616; -0.000000;,
    -0.025108; -0.999685; -0.000000;,
    -0.025108; -0.999685; -0.000000;,
    -0.025108; -0.999685; -0.000000;,
    -0.025108; -0.999685; -0.000000;,
    -0.999862; -0.016616; -0.000000;,
    -0.999862; -0.016616; -0.000000;,
    -0.999862; -0.016616; -0.000000;,
    -0.999862; -0.016616; -0.000000;,
    0.000000; 0.000000; 1.000000;,
    0.000000; 0.000000; 1.000000;,
    0.000000; 0.000000; -1.000000;,
    0.000000; 0.000000; -1.000000;;
    128;
    3;2, 1, 0;,
    3;2, 3, 1;,
    3;6, 5, 4;,
    3;6, 7, 5;,
    3;9, 4, 8;,
    3;9, 6, 4;,
    3;12, 11, 10;,
    3;12, 13, 11;,
    3;8, 5, 14;,
    3;8, 4, 5;,
    3;7, 9, 15;,
    3;7, 6, 9;,
    3;16, 9, 8;,
    3;16, 17, 9;,
    3;10, 19, 18;,
    3;10, 11, 19;,
    3;20, 8, 14;,
    3;20, 16, 8;,
    3;15, 17, 21;,
    3;15, 9, 17;,
    3;22, 17, 16;,
    3;22, 23, 17;,
    3;18, 25, 24;,
    3;18, 19, 25;,
    3;26, 16, 20;,
    3;26, 22, 16;,
    3;21, 23, 27;,
    3;21, 17, 23;,
    3;28, 23, 22;,
    3;28, 29, 23;,
    3;30, 29, 28;,
    3;30, 31, 29;,
    3;34, 33, 32;,
    3;34, 35, 33;,
    3;24, 34, 32;,
    3;24, 25, 34;,
    3;36, 22, 26;,
    3;36, 28, 22;,
    3;37, 28, 36;,
    3;37, 30, 28;,
    3;29, 39, 38;,
    3;29, 31, 39;,
    3;27, 29, 38;,
    3;27, 23, 29;,
    3;41, 37, 40;,
    3;41, 30, 37;,
    3;42, 30, 41;,
    3;42, 31, 30;,
    3;44, 35, 43;,
    3;44, 33, 35;,
    3;45, 31, 42;,
    3;45, 39, 31;,
    3;47, 40, 46;,
    3;47, 41, 40;,
    3;48, 41, 47;,
    3;48, 42, 41;,
    3;50, 43, 49;,
    3;50, 44, 43;,
    3;51, 42, 48;,
    3;51, 45, 42;,
    3;1, 46, 0;,
    3;1, 47, 46;,
    3;3, 47, 1;,
    3;3, 48, 47;,
    3;53, 49, 52;,
    3;53, 50, 49;,
    3;2, 48, 3;,
    3;2, 51, 48;,
    3;33, 36, 32;,
    3;33, 37, 36;,
    3;44, 37, 33;,
    3;44, 40, 37;,
    3;12, 7, 13;,
    3;12, 5, 7;,
    3;10, 5, 12;,
    3;10, 14, 5;,
    3;34, 39, 35;,
    3;34, 38, 39;,
    3;35, 45, 43;,
    3;35, 39, 45;,
    3;13, 15, 11;,
    3;13, 7, 15;,
    3;11, 21, 19;,
    3;11, 15, 21;,
    3;18, 14, 10;,
    3;18, 20, 14;,
    3;24, 20, 18;,
    3;24, 26, 20;,
    3;19, 27, 25;,
    3;19, 21, 27;,
    3;25, 38, 34;,
    3;25, 27, 38;,
    3;32, 26, 24;,
    3;32, 36, 26;,
    3;50, 40, 44;,
    3;50, 46, 40;,
    3;43, 51, 49;,
    3;43, 45, 51;,
    3;53, 46, 50;,
    3;53, 0, 46;,
    3;49, 2, 52;,
    3;49, 51, 2;,
    3;52, 0, 53;,
    3;52, 2, 0;,
    3;56, 55, 54;,
    3;56, 57, 55;,
    3;60, 59, 58;,
    3;60, 61, 59;,
    3;64, 63, 62;,
    3;64, 65, 63;,
    3;68, 67, 66;,
    3;68, 69, 67;,
    3;54, 71, 70;,
    3;54, 55, 71;,
    3;57, 73, 72;,
    3;57, 56, 73;,
    3;76, 75, 74;,
    3;76, 77, 75;,
    3;80, 79, 78;,
    3;80, 81, 79;,
    3;84, 83, 82;,
    3;84, 85, 83;,
    3;88, 87, 86;,
    3;88, 89, 87;,
    3;74, 91, 90;,
    3;74, 75, 91;,
    3;77, 93, 92;,
    3;77, 76, 93;;
   }

   MeshTextureCoords {
    94;
    0.964111; 0.744368;,
    0.949589; 0.580407;,
    0.964111; 0.744368;,
    0.949589; 0.580407;,
    0.400409; 0.588986;,
    0.405250; 0.743005;,
    0.400409; 0.588986;,
    0.405250; 0.743005;,
    0.491722; 0.584144;,
    0.491722; 0.584144;,
    0.503903; 0.977965;,
    0.503903; 0.977964;,
    0.422216; 0.980514;,
    0.422216; 0.980514;,
    0.496618; 0.743808;,
    0.496618; 0.743808;,
    0.562129; 0.588666;,
    0.562129; 0.588666;,
    0.577982; 0.979062;,
    0.577982; 0.979062;,
    0.567067; 0.744427;,
    0.567067; 0.744427;,
    0.615463; 0.587796;,
    0.615463; 0.587796;,
    0.631348; 0.979531;,
    0.631348; 0.979531;,
    0.620433; 0.744896;,
    0.620433; 0.744896;,
    0.743824; 0.584802;,
    0.743824; 0.584802;,
    0.792994; 0.585436;,
    0.792994; 0.585436;,
    0.756156; 0.980181;,
    0.814801; 0.980697;,
    0.756156; 0.980181;,
    0.814801; 0.980697;,
    0.748871; 0.746025;,
    0.807516; 0.746540;,
    0.748871; 0.746025;,
    0.807516; 0.746540;,
    0.846278; 0.746002;,
    0.831756; 0.580588;,
    0.831756; 0.580588;,
    0.853563; 0.980159;,
    0.853563; 0.980159;,
    0.846278; 0.746002;,
    0.898632; 0.745276;,
    0.884110; 0.579864;,
    0.884110; 0.579864;,
    0.905916; 0.979433;,
    0.905916; 0.979433;,
    0.898632; 0.745276;,
    0.971396; 0.978525;,
    0.971396; 0.978525;,
    0.039082; 0.025208;,
    0.012392; 0.024590;,
    0.039082; 0.025208;,
    0.012392; 0.024590;,
    0.053296; 0.508244;,
    0.036537; 0.036143;,
    0.028847; 0.508244;,
    0.012087; 0.036143;,
    0.393665; 0.975394;,
    0.420356; 0.976014;,
    0.393665; 0.975394;,
    0.420356; 0.976014;,
    0.036537; 0.035486;,
    0.053296; 0.507585;,
    0.012087; 0.035486;,
    0.028847; 0.507585;,
    0.056415; 0.507086;,
    0.029725; 0.506466;,
    0.029725; 0.506466;,
    0.056415; 0.507086;,
    0.037182; 0.028882;,
    0.010492; 0.028264;,
    0.037182; 0.028882;,
    0.010492; 0.028264;,
    0.053296; 0.508244;,
    0.036537; 0.036143;,
    0.028847; 0.508244;,
    0.012087; 0.036143;,
    0.955723; 0.975394;,
    0.982414; 0.976014;,
    0.955723; 0.975394;,
    0.982414; 0.976014;,
    0.036537; 0.035486;,
    0.053296; 0.507585;,
    0.012087; 0.035486;,
    0.028847; 0.507585;,
    0.054515; 0.510760;,
    0.027825; 0.510140;,
    0.027825; 0.510140;,
    0.054515; 0.510760;;
   }

   MeshVertexColors {
    94;
    0; 1.000000; 1.000000; 1.000000; 1.000000;,
    1; 1.000000; 1.000000; 1.000000; 1.000000;,
    2; 1.000000; 1.000000; 1.000000; 1.000000;,
    3; 1.000000; 1.000000; 1.000000; 1.000000;,
    4; 1.000000; 1.000000; 1.000000; 1.000000;,
    5; 1.000000; 1.000000; 1.000000; 1.000000;,
    6; 1.000000; 1.000000; 1.000000; 1.000000;,
    7; 1.000000; 1.000000; 1.000000; 1.000000;,
    8; 1.000000; 1.000000; 1.000000; 1.000000;,
    9; 1.000000; 1.000000; 1.000000; 1.000000;,
    10; 1.000000; 1.000000; 1.000000; 1.000000;,
    11; 1.000000; 1.000000; 1.000000; 1.000000;,
    12; 1.000000; 1.000000; 1.000000; 1.000000;,
    13; 1.000000; 1.000000; 1.000000; 1.000000;,
    14; 1.000000; 1.000000; 1.000000; 1.000000;,
    15; 1.000000; 1.000000; 1.000000; 1.000000;,
    16; 1.000000; 1.000000; 1.000000; 1.000000;,
    17; 1.000000; 1.000000; 1.000000; 1.000000;,
    18; 1.000000; 1.000000; 1.000000; 1.000000;,
    19; 1.000000; 1.000000; 1.000000; 1.000000;,
    20; 1.000000; 1.000000; 1.000000; 1.000000;,
    21; 1.000000; 1.000000; 1.000000; 1.000000;,
    22; 1.000000; 1.000000; 1.000000; 1.000000;,
    23; 1.000000; 1.000000; 1.000000; 1.000000;,
    24; 1.000000; 1.000000; 1.000000; 1.000000;,
    25; 1.000000; 1.000000; 1.000000; 1.000000;,
    26; 1.000000; 1.000000; 1.000000; 1.000000;,
    27; 1.000000; 1.000000; 1.000000; 1.000000;,
    28; 1.000000; 1.000000; 1.000000; 1.000000;,
    29; 1.000000; 1.000000; 1.000000; 1.000000;,
    30; 1.000000; 1.000000; 1.000000; 1.000000;,
    31; 1.000000; 1.000000; 1.000000; 1.000000;,
    32; 1.000000; 1.000000; 1.000000; 1.000000;,
    33; 1.000000; 1.000000; 1.000000; 1.000000;,
    34; 1.000000; 1.000000; 1.000000; 1.000000;,
    35; 1.000000; 1.000000; 1.000000; 1.000000;,
    36; 1.000000; 1.000000; 1.000000; 1.000000;,
    37; 1.000000; 1.000000; 1.000000; 1.000000;,
    38; 1.000000; 1.000000; 1.000000; 1.000000;,
    39; 1.000000; 1.000000; 1.000000; 1.000000;,
    40; 1.000000; 1.000000; 1.000000; 1.000000;,
    41; 1.000000; 1.000000; 1.000000; 1.000000;,
    42; 1.000000; 1.000000; 1.000000; 1.000000;,
    43; 1.000000; 1.000000; 1.000000; 1.000000;,
    44; 1.000000; 1.000000; 1.000000; 1.000000;,
    45; 1.000000; 1.000000; 1.000000; 1.000000;,
    46; 1.000000; 1.000000; 1.000000; 1.000000;,
    47; 1.000000; 1.000000; 1.000000; 1.000000;,
    48; 1.000000; 1.000000; 1.000000; 1.000000;,
    49; 1.000000; 1.000000; 1.000000; 1.000000;,
    50; 1.000000; 1.000000; 1.000000; 1.000000;,
    51; 1.000000; 1.000000; 1.000000; 1.000000;,
    52; 1.000000; 1.000000; 1.000000; 1.000000;,
    53; 1.000000; 1.000000; 1.000000; 1.000000;,
    54; 1.000000; 1.000000; 1.000000; 1.000000;,
    55; 1.000000; 1.000000; 1.000000; 1.000000;,
    56; 1.000000; 1.000000; 1.000000; 1.000000;,
    57; 1.000000; 1.000000; 1.000000; 1.000000;,
    58; 1.000000; 1.000000; 1.000000; 1.000000;,
    59; 1.000000; 1.000000; 1.000000; 1.000000;,
    60; 1.000000; 1.000000; 1.000000; 1.000000;,
    61; 1.000000; 1.000000; 1.000000; 1.000000;,
    62; 1.000000; 1.000000; 1.000000; 1.000000;,
    63; 1.000000; 1.000000; 1.000000; 1.000000;,
    64; 1.000000; 1.000000; 1.000000; 1.000000;,
    65; 1.000000; 1.000000; 1.000000; 1.000000;,
    66; 1.000000; 1.000000; 1.000000; 1.000000;,
    67; 1.000000; 1.000000; 1.000000; 1.000000;,
    68; 1.000000; 1.000000; 1.000000; 1.000000;,
    69; 1.000000; 1.000000; 1.000000; 1.000000;,
    70; 1.000000; 1.000000; 1.000000; 1.000000;,
    71; 1.000000; 1.000000; 1.000000; 1.000000;,
    72; 1.000000; 1.000000; 1.000000; 1.000000;,
    73; 1.000000; 1.000000; 1.000000; 1.000000;,
    74; 1.000000; 1.000000; 1.000000; 1.000000;,
    75; 1.000000; 1.000000; 1.000000; 1.000000;,
    76; 1.000000; 1.000000; 1.000000; 1.000000;,
    77; 1.000000; 1.000000; 1.000000; 1.000000;,
    78; 1.000000; 1.000000; 1.000000; 1.000000;,
    79; 1.000000; 1.000000; 1.000000; 1.000000;,
    80; 1.000000; 1.000000; 1.000000; 1.000000;,
    81; 1.000000; 1.000000; 1.000000; 1.000000;,
    82; 1.000000; 1.000000; 1.000000; 1.000000;,
    83; 1.000000; 1.000000; 1.000000; 1.000000;,
    84; 1.000000; 1.000000; 1.000000; 1.000000;,
    85; 1.000000; 1.000000; 1.000000; 1.000000;,
    86; 1.000000; 1.000000; 1.000000; 1.000000;,
    87; 1.000000; 1.000000; 1.000000; 1.000000;,
    88; 1.000000; 1.000000; 1.000000; 1.000000;,
    89; 1.000000; 1.000000; 1.000000; 1.000000;,
    90; 1.000000; 1.000000; 1.000000; 1.000000;,
    91; 1.000000; 1.000000; 1.000000; 1.000000;,
    92; 1.000000; 1.000000; 1.000000; 1.000000;,
    93; 1.000000; 1.000000; 1.000000; 1.000000;;
   }

   MeshMaterialList {
    2;
    128;
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0;

    Material def_surf_mat {
     0.992157; 0.992157; 0.992157; 1.000000;;
     128.000000;
     0.150000; 0.150000; 0.150000;;
     0.000000; 0.000000; 0.000000;;

     TextureFilename {
      "wornfence.dds";
     }
    }

    Material Material__1 {
     0.200000; 0.200000; 0.200000; 1.000000;;
     128.000000;
     0.200000; 0.200000; 0.200000;;
     0.000000; 0.000000; 0.000000;;
    }

   }
  }
}
