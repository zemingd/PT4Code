def gcd(a,b)
  return a if(b==0)
  return gcd(b,a%b);
end

def lcm(a, b)
  return a*b/gcd(a,b);
end

A, B, C, D = gets.strip.split.map {|e| (e.to_i) }
CD = lcm(C,D);

part_c = (B.to_f/C.to_f - (A-1).to_f/C.to_f).to_f.ceil;
part_c = (B.to_f/C.to_f).to_i if A-1 < C

part_d = (B.to_f/D.to_f - (A-1).to_f/D.to_f).to_f.ceil;
part_d = (B.to_f/D.to_f).to_i if A-1 < D

part_cd = (B.to_f/CD.to_f - (A-1).to_f/CD.to_f).to_f.ceil;
part_cd = (B.to_f/CD.to_f).to_i if A-1 < CD

part_c = 0 if(C>B)
part_d = 0 if(D>B)
part_cd = 0 if(CD>B)


result = (B-A+1) - (part_c + part_d - part_cd)

puts result

