x=gets.chomp.split.map(&:to_s)
a=x[0].to_i
b=x[2].to_i
if x[1]=="+" then
    puts a+b
else
    puts a-b
end