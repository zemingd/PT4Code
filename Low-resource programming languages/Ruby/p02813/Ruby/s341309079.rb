#ABC150C_CountOrder.rb
n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)

if p == q
  puts 0
  exit
end

ar = (1..n).to_a
br = ar.permutation(n).to_a.sort

a = 0
b = 0
br.each_with_index do |bb,i|
  if bb == p
    a = i+1
  elsif bb == q
    b = i+1
  end
end

puts (a - b).abs
  
