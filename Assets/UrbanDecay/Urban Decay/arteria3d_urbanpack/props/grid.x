xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.19
// Website: http://www.unwrap3d.com
// Time: Mon Nov 23 12:27:05 2009

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
    36;
    -16.284599; 2.451323; 15.193001;,
    -15.193060; 2.451323; 16.284599;,
    -16.284599; 0.000000; 15.193001;,
    -15.193060; 0.000000; 16.284599;,
    -16.284599; 0.000000; -14.458397;,
    -16.284599; 2.451323; -14.458397;,
    -14.458390; 0.000000; -16.284599;,
    -14.458390; 2.451323; -16.284599;,
    14.541899; 0.000000; -16.284599;,
    14.541899; 2.451323; -16.284599;,
    16.284599; 0.000000; -14.541901;,
    16.284599; 2.451323; -14.541901;,
    14.541899; 0.000000; -16.284599;,
    14.541899; 2.451323; -16.284599;,
    14.484098; 2.451323; 16.284599;,
    14.484098; 0.000000; 16.284599;,
    -15.193060; 2.451323; 16.284599;,
    -15.193060; 0.000000; 16.284599;,
    16.284599; 0.000000; 14.484100;,
    16.284599; 2.451323; 14.484100;,
    16.284599; 2.451323; 14.484100;,
    14.484098; 2.451323; 16.284599;,
    16.284599; 2.451323; -14.541901;,
    -15.193060; 2.451323; 16.284599;,
    14.541899; 2.451323; -16.284599;,
    -16.284599; 2.451323; 15.193001;,
    -14.458390; 2.451323; -16.284599;,
    -16.284599; 2.451323; -14.458397;,
    16.284599; 0.000000; -14.541901;,
    14.541899; 0.000000; -16.284599;,
    16.284599; 0.000000; 14.484100;,
    -14.458390; 0.000000; -16.284599;,
    14.484098; 0.000000; 16.284599;,
    -16.284599; 0.000000; -14.458397;,
    -15.193060; 0.000000; 16.284599;,
    -16.284599; 0.000000; 15.193001;;
    28;
    3;2, 1, 0;,
    3;2, 3, 1;,
    3;2, 5, 4;,
    3;2, 0, 5;,
    3;4, 7, 6;,
    3;4, 5, 7;,
    3;6, 9, 8;,
    3;6, 7, 9;,
    3;12, 11, 10;,
    3;12, 13, 11;,
    3;16, 15, 14;,
    3;16, 17, 15;,
    3;10, 19, 18;,
    3;10, 11, 19;,
    3;22, 21, 20;,
    3;22, 23, 21;,
    3;24, 23, 22;,
    3;24, 25, 23;,
    3;26, 25, 24;,
    3;26, 27, 25;,
    3;30, 29, 28;,
    3;30, 31, 29;,
    3;32, 31, 30;,
    3;32, 33, 31;,
    3;34, 33, 32;,
    3;34, 35, 33;,
    3;18, 14, 15;,
    3;18, 19, 14;;

   MeshNormals {
    36;
    -0.923885; 0.000000; 0.382671;,
    -0.707126; 0.000000; 0.707088;,
    -0.923885; 0.000000; 0.382671;,
    -0.707126; 0.000000; 0.707088;,
    -0.862856; 0.000000; -0.505451;,
    -0.967538; 0.000000; -0.252725;,
    -0.252724; 0.000000; -0.967538;,
    -0.505448; 0.000000; -0.862857;,
    0.000000; 0.000000; -1.000000;,
    0.000000; 0.000000; -1.000000;,
    0.967538; 0.000000; -0.252725;,
    0.862856; 0.000000; -0.505450;,
    0.707106; 0.000000; -0.707107;,
    0.707106; 0.000000; -0.707107;,
    0.505449; 0.000000; 0.862856;,
    0.252725; 0.000000; 0.967538;,
    0.000000; 0.000000; 1.000000;,
    0.000000; 0.000000; 1.000000;,
    0.862856; 0.000000; 0.505450;,
    0.967538; 0.000000; 0.252725;,
    0.000000; 1.000000; -0.000000;,
    0.000000; 1.000000; -0.000000;,
    0.000000; 1.000000; -0.000000;,
    0.000000; 1.000000; -0.000000;,
    0.000000; 1.000000; -0.000000;,
    0.000000; 1.000000; -0.000000;,
    0.000000; 1.000000; -0.000000;,
    0.000000; 1.000000; -0.000000;,
    0.000000; -1.000000; -0.000000;,
    0.000000; -1.000000; -0.000000;,
    0.000000; -1.000000; -0.000000;,
    0.000000; -1.000000; -0.000000;,
    0.000000; -1.000000; -0.000000;,
    0.000000; -1.000000; -0.000000;,
    0.000000; -1.000000; -0.000000;,
    0.000000; -1.000000; -0.000000;;
    28;
    3;2, 1, 0;,
    3;2, 3, 1;,
    3;2, 5, 4;,
    3;2, 0, 5;,
    3;4, 7, 6;,
    3;4, 5, 7;,
    3;6, 9, 8;,
    3;6, 7, 9;,
    3;12, 11, 10;,
    3;12, 13, 11;,
    3;16, 15, 14;,
    3;16, 17, 15;,
    3;10, 19, 18;,
    3;10, 11, 19;,
    3;22, 21, 20;,
    3;22, 23, 21;,
    3;24, 23, 22;,
    3;24, 25, 23;,
    3;26, 25, 24;,
    3;26, 27, 25;,
    3;30, 29, 28;,
    3;30, 31, 29;,
    3;32, 31, 30;,
    3;32, 33, 31;,
    3;34, 33, 32;,
    3;34, 35, 33;,
    3;18, 14, 15;,
    3;18, 19, 14;;
   }

   MeshTextureCoords {
    36;
    0.928488; 0.055790;,
    0.947466; 0.055790;,
    0.928488; 0.100460;,
    0.947466; 0.100460;,
    0.524220; 0.100460;,
    0.524220; 0.055790;,
    0.491735; 0.100460;,
    0.491735; 0.055790;,
    0.093437; 0.100460;,
    0.093437; 0.055790;,
    0.111666; 0.100460;,
    0.111666; 0.055790;,
    0.080748; 0.100460;,
    0.080748; 0.055790;,
    0.542207; 0.055790;,
    0.542207; 0.100460;,
    0.946718; 0.055790;,
    0.946718; 0.100460;,
    0.510206; 0.100460;,
    0.510206; 0.055790;,
    0.950000; 0.099754;,
    0.900246; 0.050000;,
    0.950000; 0.901843;,
    0.080163; 0.050000;,
    0.901843; 0.950000;,
    0.050000; 0.080165;,
    0.100464; 0.950000;,
    0.050000; 0.899536;,
    0.950000; 0.901843;,
    0.901843; 0.950000;,
    0.950000; 0.099754;,
    0.100464; 0.950000;,
    0.900246; 0.050000;,
    0.050000; 0.899536;,
    0.080163; 0.050000;,
    0.050000; 0.080165;;
   }

   MeshVertexColors {
    36;
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
    35; 1.000000; 1.000000; 1.000000; 1.000000;;
   }

   MeshMaterialList {
    1;
    28;
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
      "grid.dds";
     }
    }

   }
  }
}
