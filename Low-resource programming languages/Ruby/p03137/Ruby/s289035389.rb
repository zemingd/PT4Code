(n, m) = gets.chomp.split(' ').map(&:to_i)
x = gets.chomp.split(' ').map(&:to_i).sort
 
if n == 1 || n >= m then
  puts 0.to_s
else
  d = [-1] * (m - 1)
  (m - 1).times do |i|
    d[i] = x[i + 1] - x[i]
  end
  
  l = x[m - 1] - x[0]
  puts (l - d.sort{|a, b| b <=> a}[0...(n - 1)].reduce(:+)).to_s
end