n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

k.upto(n-1) do |i|
  if a[i-k] < a[i]
    puts "Yes"
  else
    puts "No"
  end
end
