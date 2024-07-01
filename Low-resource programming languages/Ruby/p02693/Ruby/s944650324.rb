K = gets.to_i
A, B = gets.split.map(&:to_i)

if (A..B).any? { |x| x % K == 0 }
  puts 'OK'
else
  puts 'NG'
end
