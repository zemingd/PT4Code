n, k = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
l = 0
(k).upto(n-1) do |i|
  if a[l] < a[i]
    puts "Yes"
  else
    puts "No"
  end
  l += 1
end