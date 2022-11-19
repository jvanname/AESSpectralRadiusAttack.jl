include("aes.jl")

GaloisFieldBasis=[UInt8(1),UInt8(2),UInt8(4),UInt8(8),UInt8(16),UInt8(32),UInt8(64),UInt8(128)];

function bytetovec(x)
output=zeros(Int64,8);
for i in 1:8
if x&GaloisFieldBasis[i]==0
      output[i]=0;
    else output[i]=1;
    end;
  end;
return output;
end;

function vectobyte(x)
b=UInt8(0);
            for i in 1:8
                  if x[i]==1
                      b+=GaloisFieldBasis[i];  
                  end;
end;
return b;
end;

function vectobytearray(x)
longn=length(x);
shortn=Int(longn/8);      
bytearray=zeros(UInt8,shortn);
for i in 1:shortn
            for j in 1:8
if x[(i-1)*8+j]==1
                        bytearray[i]+=GaloisFieldBasis[j];
                  end;
            end;
      end;
return bytearray;
end;

function bytearraytovec(x)
return vcat(bytetovec.(x)...)
end;

function MiniMixColumns(z) return [gadd(gmul(z[1],UInt8(3)),gmul(z[2],UInt8(2)),gadd(gmul(z[2],UInt8(3)),gmul(z[1],UInt8(2))]; end;

            function SingleMixColumns(z) end;

                  
function SingleMixColumns(z) return [gadd([gmul(z[1],UInt8(2)),gmul(z[2],UInt8(3)),gmul(z[3],UInt8(1)),gmul(z[4],UInt8(1))]),
                              gadd([gmul(z[1],UInt8(1)),gmul(z[2],UInt8(2)),gmul(z[3],UInt8(3)),gmul(z[4],UInt8(1))]),
                              gadd([gmul(z[1],UInt8(1)),gmul(z[2],UInt8(1)),gmul(z[3],UInt8(2)),gmul(z[4],UInt8(3))]),
                              gadd([gmul(z[1],UInt8(3)),gmul(z[2],UInt8(1)),gmul(z[3],UInt8(1)),gmul(z[4],UInt8(2))])];
                        end;                  
