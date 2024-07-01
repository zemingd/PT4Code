N = gets
A = gets.chomp.split(' ').map(&:to_i)

lcm = A.inject(:lcm)
answer = 0
A.each do |a|
  answer += (lcm - 1) % a
end

puts answer
