a, b, c = gets.split.map(&:to_i)
memo = Array.new(100){ 0 }
n = 0
loop do
  n += a
  m = n % b
  if m == c
    puts "YES"
    break
  elsif memo[m] == 0
    memo[m] = 1
  else
    puts "NO"
    break
  end
end
