N, Y = gets.split.map(&:to_i)
 
flag = false
result = [-1, -1, -1]
(0..N).each do |i|
  (0..(N - i)).each do |j|
    if i * 10000 + j * 5000 + (N - i - j) * 1000 == Y
      flag = true
      result = [i, j, N - i - j]
      break
    end
  end
  break if flag
end
 
puts "#{result[0]} #{result[1]} #{result[2]}"