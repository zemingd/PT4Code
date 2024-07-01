# abc111 A
n = gets.chomp.chars.map(&:to_i)

puts n.map{|x|
  if x == 1
    9
  elsif x == 9
    1
  else
    x
  end
}.join


