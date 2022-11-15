include("aes.jl")

GaloisFieldBasis=[UInt8(1),UInt8(2),UInt8(4),UInt8(8),UInt8(16),UInt8(32),UInt8(64),UInt8(128)];

function vectobyte(x)
output=[];
for i in 1:8
if x&GaloisFieldBasis[i]==0
      output[i]=0;
    else output[i]=1;
    end;
  end;
end;

function bytetovec(x)
b=0;
            for i in 1:8
                  if x[i]==1
                      b+=GaloisFieldBasis[i];  
                  end;
end;
end;
