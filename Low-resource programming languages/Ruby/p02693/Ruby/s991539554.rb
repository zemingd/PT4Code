K = gets.to_i
A, B = gets.split(' ').map(&:to_i)
msg = 'NG'

(A..B).each do |i|
  if (i % K).zero?
    msg = 'OK'
    break
  end
end

puts msg