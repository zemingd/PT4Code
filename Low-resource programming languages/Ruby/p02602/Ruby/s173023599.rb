n, k = gets.split.map &:to_i
a = gets.split.map &:to_i
(k...n).each do |i|
  if a[i] > a[i-k]
    puts "Yes"
  else
    puts "No"
  end
end