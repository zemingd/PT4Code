require 'scanf'
input = scanf("%d %d %d")
a = input[0].to_i; b = input[1].to_i; c = input[2].to_i
if(a > b) then
  a ^= b; b ^= a; a ^= b;
end
if(a > c) then
  a ^= c; c ^= a; a ^= c;
end
if(b > c) then
  b ^= c; c ^= b; b ^= c;
end
printf("%d %d %d\n", a, b, c)