input = gets
A=input.split(" ")[0].to_i
B=input.split(" ")[1].to_i
if B%A == 0 then
print A+B
else
print A-B
end