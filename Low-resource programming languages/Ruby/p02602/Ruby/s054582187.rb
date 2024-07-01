n, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
(k..n-1).each do |i|
  if as[i] > as[i-k]
    puts 'Yes'
  else
    puts 'No'
  end
end