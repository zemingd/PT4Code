N = gets.chomp.to_i
P = gets.chomp.to_i
Q = gets.chomp.to_i

number=1
array = []
while  N>=number do
  array.push(number)
  number+=1
end

aaa = []

array.permutation { |p| aaa.push(p.join.to_i) }