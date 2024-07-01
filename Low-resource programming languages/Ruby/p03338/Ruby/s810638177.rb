size = gets.chomp.to_i
input = gets.chomp.chars

dic = {}

s = -1

for x in 1 ... size
  a = input[0, x]
  b = input[x..-1]

  if s < (a & b).length
    s = (a & b).length
  end
end
puts s
