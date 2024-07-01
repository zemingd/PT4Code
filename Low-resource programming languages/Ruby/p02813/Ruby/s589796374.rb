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
a = aaa.sort.find_index(P).to_i + 1
b = aaa.sort.find_index(Q).to_i + 1
puts b-a