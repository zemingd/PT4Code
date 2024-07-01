#!/user/bin/env ruby

N, M = gets.chomp.split.map(&:to_i)

a = gets.chomp.split.map(&:to_i)

# p N
# p M
# p a
# puts "--------------"

bc = []
while line = gets do
  tmp = line.chomp.split.map(&:to_i)
  bc << tmp
end

bc.sort_by!{|item|
  item[1]
}

# p bc
# puts "--------------"

add_t = []

while tmp = bc.pop do
  # p tmp
  add_t = add_t +  [tmp[1]] * tmp[0]
  # p add_t
  break if add_t.size >= N
end

puts (a + add_t[0...N]).sort!.reverse![0...N].inject(:+)