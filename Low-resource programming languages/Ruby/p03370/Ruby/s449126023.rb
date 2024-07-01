_, x = gets.split.map(&:to_i)
m_ary = readlines.map(&:to_i).sort
answer = 0

m_ary.each do |m|
  x -= m

  break if m.negative?
  answer += 1
end

answer += x / m_ary.first
puts answer
