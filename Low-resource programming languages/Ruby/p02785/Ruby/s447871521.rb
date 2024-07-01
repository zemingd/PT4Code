n,k = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
sum = 0

if k > n
  puts 0
elsif k == 0
  arr.each do |v|
    sum += v
  end
  puts sum
else
  arr[k+1..-1].each do |v|
  sum += v
  end
  puts sum
end