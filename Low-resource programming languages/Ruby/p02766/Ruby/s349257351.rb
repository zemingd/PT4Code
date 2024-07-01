# Your code here!
num, base = gets.chop.split.map(&:to_i)
tmp = 0
a = 0
while tmp <= num do
    a+=1
    tmp = base**a
end
p a

