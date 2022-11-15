include("aes.jl")

GaloisFieldBasis=[UInt8(1),UInt8(2),UInt8(4),UInt8(8),UInt8(16),UInt8(32),UInt8(64),UInt8(128)];

function vectobyte(x)
output=zeros(Int64,8);
for i in 1:8
if x&GaloisFieldBasis[i]==0
      output[i]=0;
    else output[i]=1;
    end;
  end;
return output;
end;

function bytetovec(x)
b=UInt8(0);
            for i in 1:8
                  if x[i]==1
                      b+=GaloisFieldBasis[i];  
                  end;
end;
return b;
end;

function vectobytearray(x)

bytearray=[];

end;

function bytearraytovec(x)
return cat(bytetovec.(x))
end;

