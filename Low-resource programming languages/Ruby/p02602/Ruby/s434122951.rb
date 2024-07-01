n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
for i in 0...n-k do
  if a[i]<a[i+k]
    puts "Yes"
  else
    puts "No"
  end
end
