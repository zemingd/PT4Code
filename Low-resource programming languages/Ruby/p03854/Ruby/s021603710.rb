S = gets.chomp

divides = ['dream', 'dreamer', 'erase', 'eraser']
dp = S.size.times.map{false}
dp[0] = true

0.step (S.size - 1) do |i|
  next if !dp[i]
  divides.each do |d|
#    puts "#{i}: #{d}"
    dp[i + d.size] = true if S.slice(i, d.size) == d
  end
end
p dp
puts dp[S.size] ? 'YES' : 'NO'