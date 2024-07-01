n, m, c = gets.chomp.split(' ').map(&:to_i)
bs = gets.chomp.split(' ').map(&:to_i)
answer = 0

n_arr = Array.new(n)
m_arr = Array.new(m)

n_arr.each do |i|
  result = 0
  as = gets.chomp.split(' ').map(&:to_i)
  m_arr.each_with_index do |j, index|
    result += as[index] * bs[index]
  end
  answer+= 1 if (result - c) > 0
end

puts answer