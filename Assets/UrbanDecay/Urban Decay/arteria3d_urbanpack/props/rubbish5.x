xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.19
// Website: http://www.unwrap3d.com
// Time: Mon Nov 23 12:32:49 2009

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
    45;
    -22.271248; 0.000603; -10.082520;,
    -20.729851; 0.000603; -12.119559;,
    -15.042850; 0.000500; -13.803989;,
    3.226711; 0.000301; -3.693319;,
    3.725311; 3.060101; 0.227982;,
    -2.832249; 2.029301; -4.775919;,
    -2.776049; 4.536003; -0.787119;,
    3.999491; 4.124302; 3.236481;,
    -2.782549; 5.551502; 2.422781;,
    3.644791; 3.932102; 7.130281;,
    -2.857649; 5.130802; 6.053980;,
    1.637901; 0.000702; 15.199982;,
    -6.860648; 0.000801; 14.313381;,
    -4.563249; 0.000603; -9.698619;,
    0.220451; 0.000401; -5.852819;,
    -11.569150; 2.256100; -6.269619;,
    -11.910850; 3.600300; -1.850319;,
    -23.813351; 0.000603; -8.046519;,
    -24.114052; 0.000603; -3.110220;,
    -12.121249; 3.788902; 1.453482;,
    -23.840050; 0.000603; -0.081718;,
    -11.860349; 3.225502; 4.275280;,
    -20.559650; 0.000401; 2.434481;,
    -15.101949; 0.000801; 12.427483;,
    -20.013050; 0.000702; 9.428980;,
    -9.355048; 0.000500; -15.487579;,
    7.954521; 3.178001; 1.432781;,
    8.219271; 3.845501; 3.235081;,
    8.242221; 4.226902; 6.366480;,
    9.597562; 4.150700; 7.914680;,
    9.238791; 0.000500; 15.487579;,
    8.230951; 0.000000; -0.892420;,
    14.994680; 1.817200; 0.148981;,
    19.818050; 0.000603; -1.958818;,
    15.746711; 2.169800; 1.836981;,
    23.328951; 0.000702; 2.846682;,
    15.883202; 2.766502; 4.705481;,
    21.932251; 0.000603; 5.494680;,
    15.766801; 2.662800; 8.512381;,
    23.257751; 0.000702; 9.441881;,
    15.989531; 0.000702; 15.337379;,
    23.397449; 0.000801; 14.015079;,
    13.982121; 0.000401; -2.647419;,
    24.114052; 0.000702; -0.090019;,
    23.540751; 0.000702; -2.024719;;
    63;
    3;2, 1, 0;,
    3;5, 4, 3;,
    3;5, 6, 4;,
    3;6, 7, 4;,
    3;6, 8, 7;,
    3;8, 9, 7;,
    3;8, 10, 9;,
    3;10, 11, 9;,
    3;10, 12, 11;,
    3;3, 13, 5;,
    3;3, 14, 13;,
    3;15, 6, 5;,
    3;15, 16, 6;,
    3;17, 16, 15;,
    3;17, 18, 16;,
    3;16, 8, 6;,
    3;16, 19, 8;,
    3;18, 19, 16;,
    3;18, 20, 19;,
    3;19, 10, 8;,
    3;19, 21, 10;,
    3;20, 21, 19;,
    3;20, 22, 21;,
    3;21, 12, 10;,
    3;21, 23, 12;,
    3;22, 23, 21;,
    3;22, 24, 23;,
    3;0, 25, 2;,
    3;0, 15, 25;,
    3;17, 15, 0;,
    3;5, 25, 15;,
    3;5, 13, 25;,
    3;3, 27, 26;,
    3;3, 4, 27;,
    3;4, 28, 27;,
    3;4, 7, 28;,
    3;7, 29, 28;,
    3;7, 9, 29;,
    3;9, 30, 29;,
    3;9, 11, 30;,
    3;26, 14, 3;,
    3;26, 31, 14;,
    3;34, 33, 32;,
    3;34, 35, 33;,
    3;26, 34, 32;,
    3;26, 27, 34;,
    3;36, 35, 34;,
    3;36, 37, 35;,
    3;27, 36, 34;,
    3;27, 28, 36;,
    3;38, 37, 36;,
    3;38, 39, 37;,
    3;28, 38, 36;,
    3;28, 29, 38;,
    3;40, 39, 38;,
    3;40, 41, 39;,
    3;29, 40, 38;,
    3;29, 30, 40;,
    3;32, 31, 26;,
    3;32, 42, 31;,
    3;32, 33, 42;,
    3;44, 35, 43;,
    3;44, 33, 35;;

   MeshNormals {
    45;
    -0.068495; 0.992941; -0.096830;,
    0.000023; 1.000000; 0.000018;,
    0.000002; 1.000000; -0.000024;,
    0.072557; 0.820374; -0.567205;,
    0.221946; 0.872028; -0.436242;,
    0.294386; 0.825893; -0.480871;,
    0.125624; 0.913865; -0.386094;,
    0.123096; 0.985467; -0.117058;,
    0.026452; 0.997622; -0.063639;,
    0.050236; 0.960899; 0.272304;,
    -0.086900; 0.946527; 0.310702;,
    0.006311; 0.884386; 0.466714;,
    -0.133218; 0.896138; 0.423308;,
    0.662484; 0.340914; -0.667002;,
    -0.111938; -0.992838; 0.041739;,
    -0.049055; 0.955071; -0.292291;,
    -0.167244; 0.969862; -0.177194;,
    -0.193298; 0.970020; -0.147298;,
    -0.289408; 0.956987; -0.020444;,
    -0.256826; 0.963840; 0.071082;,
    -0.351189; 0.900302; 0.257142;,
    -0.284331; 0.903599; 0.320415;,
    -0.268517; 0.930229; 0.250145;,
    -0.155767; 0.970005; 0.186621;,
    0.000006; 1.000000; -0.000044;,
    0.140837; 0.956538; -0.255343;,
    -0.037565; 0.901305; -0.431554;,
    0.064020; 0.952635; -0.297300;,
    0.098622; 0.991011; -0.090392;,
    0.024625; 0.970690; 0.239071;,
    -0.033530; 0.885144; 0.464108;,
    0.088453; 0.701276; -0.707381;,
    0.049735; 0.862797; -0.503098;,
    0.150209; 0.949531; -0.275369;,
    0.211203; 0.942515; -0.258958;,
    0.200232; 0.978701; -0.045284;,
    0.274973; 0.960411; -0.044721;,
    0.384109; 0.922337; 0.041897;,
    0.283915; 0.955363; 0.081695;,
    0.214115; 0.973726; 0.077537;,
    0.121608; 0.945917; 0.300754;,
    -0.000017; 1.000000; -0.000021;,
    -0.043417; 0.844880; -0.533191;,
    0.000000; 1.000000; -0.000000;,
    -0.000013; 1.000000; -0.000001;;
    63;
    3;2, 1, 0;,
    3;5, 4, 3;,
    3;5, 6, 4;,
    3;6, 7, 4;,
    3;6, 8, 7;,
    3;8, 9, 7;,
    3;8, 10, 9;,
    3;10, 11, 9;,
    3;10, 12, 11;,
    3;3, 13, 5;,
    3;3, 14, 13;,
    3;15, 6, 5;,
    3;15, 16, 6;,
    3;17, 16, 15;,
    3;17, 18, 16;,
    3;16, 8, 6;,
    3;16, 19, 8;,
    3;18, 19, 16;,
    3;18, 20, 19;,
    3;19, 10, 8;,
    3;19, 21, 10;,
    3;20, 21, 19;,
    3;20, 22, 21;,
    3;21, 12, 10;,
    3;21, 23, 12;,
    3;22, 23, 21;,
    3;22, 24, 23;,
    3;0, 25, 2;,
    3;0, 15, 25;,
    3;17, 15, 0;,
    3;5, 25, 15;,
    3;5, 13, 25;,
    3;3, 27, 26;,
    3;3, 4, 27;,
    3;4, 28, 27;,
    3;4, 7, 28;,
    3;7, 29, 28;,
    3;7, 9, 29;,
    3;9, 30, 29;,
    3;9, 11, 30;,
    3;26, 14, 3;,
    3;26, 31, 14;,
    3;34, 33, 32;,
    3;34, 35, 33;,
    3;26, 34, 32;,
    3;26, 27, 34;,
    3;36, 35, 34;,
    3;36, 37, 35;,
    3;27, 36, 34;,
    3;27, 28, 36;,
    3;38, 37, 36;,
    3;38, 39, 37;,
    3;28, 38, 36;,
    3;28, 29, 38;,
    3;40, 39, 38;,
    3;40, 41, 39;,
    3;29, 40, 38;,
    3;29, 30, 40;,
    3;32, 31, 26;,
    3;32, 42, 31;,
    3;32, 33, 42;,
    3;44, 35, 43;,
    3;44, 33, 35;;
   }

   MeshTextureCoords {
    45;
    0.103520; 0.479418;,
    0.120660; 0.512892;,
    0.198804; 0.551851;,
    0.491746; 0.425308;,
    0.508999; 0.369731;,
    0.381139; 0.383300;,
    0.414369; 0.350054;,
    0.520665; 0.326815;,
    0.420259; 0.321274;,
    0.525477; 0.269456;,
    0.428453; 0.268437;,
    0.514788; 0.173992;,
    0.389310; 0.165121;,
    0.371231; 0.460243;,
    0.442641; 0.457819;,
    0.270649; 0.433723;,
    0.276992; 0.368778;,
    0.086368; 0.445958;,
    0.094627; 0.373622;,
    0.280166; 0.338116;,
    0.106342; 0.330415;,
    0.291162; 0.297872;,
    0.160333; 0.302321;,
    0.265006; 0.171394;,
    0.186139; 0.202312;,
    0.279184; 0.566360;,
    0.573394; 0.363076;,
    0.581840; 0.337623;,
    0.590178; 0.292282;,
    0.611564; 0.299963;,
    0.625722; 0.189254;,
    0.571458; 0.397493;,
    0.679958; 0.449677;,
    0.736722; 0.487012;,
    0.695176; 0.427127;,
    0.822126; 0.482973;,
    0.704488; 0.385888;,
    0.808646; 0.441011;,
    0.702534; 0.307068;,
    0.837954; 0.387173;,
    0.723210; 0.208689;,
    0.756132; 0.246797;,
    0.658129; 0.487631;,
    0.826002; 0.527556;,
    0.812744; 0.554140;;
   }

   MeshVertexColors {
    45;
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
    44; 1.000000; 1.000000; 1.000000; 1.000000;;
   }

   MeshMaterialList {
    1;
    63;
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
      "rubbish5.dds";
     }
    }

   }
  }
}
