n = gets.to_i
s = gets.split.map(&:to_i)

i = 0   
ban = 0 #砕いた回数
nex = 1 

while i < s.length do
    if s[i] == nex then
        nex += 1
          i += 1
    else 
          i += 1
        ban += 1
    end
end  
if s[-1] == (nex-1) then
    p ban
else
    p -1
end