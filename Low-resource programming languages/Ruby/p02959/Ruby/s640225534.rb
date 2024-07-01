N = gets.chomp.to_i
An = gets.chomp.split(' ').map(&:to_i)
Bn = gets.chomp.split(' ').map(&:to_i)

total_killed = 0
(N - 1).downto(0) do |i|
  killed = An[i+1] > Bn[i] ? Bn[i] : An[i+1]
  total_killed += killed
  An[i+1] -= killed
  Bn[i] -= killed
  
  killed = An[i] > Bn[i] ? Bn[i] : An[i]
  total_killed += killed
  An[i] -= killed
  Bn[i] -= killed
end

puts total_killed
