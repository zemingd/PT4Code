n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

def create_yakusu_arr(num)
  return [1] if num == 1
  return (1..Math.sqrt(num).to_i).select {|i|
    num % i == 0
  }.map {|a| [a, num / a]}.flatten.uniq.sort
end

yakusu_arr = arr.map do |a|
  create_yakusu_arr(a)
end

max = 0
n.times do |i|
  p = yakusu_arr.select.with_index{|arr, j| i != j}.reduce(&:&)
  max = p.max if p.max > max
end

puts max

