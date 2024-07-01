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
        s.delete_at(i)
        ban += 1
    end
end  
if ban > 0 && s[-1] != i then
    p -1
else
    p ban
end