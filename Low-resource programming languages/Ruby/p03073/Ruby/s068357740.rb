cash = gets
S = cash.split("")
cash0 = ""
cash1 = ""
for i in 1...S.length do
  if i % 2 == 0 then
    cash0 = cash0 + "0"
    cash1 = cash1 + "1"
  else
    cash0 = cash0 + "1"
    cash1 = cash1 + "0"
  end
end
cash0 = cash0.split("")
cash1 = cash1.split("")
num0=0
num1=0
for i in 0...S.length do
  if S[i]==cash0[i] then
    num0=num0+1
  end
  if S[i]==cash1[i] then
    num1=num1+1
  end
end
if num0 > num1 then
  puts num1
else
  puts num0
end