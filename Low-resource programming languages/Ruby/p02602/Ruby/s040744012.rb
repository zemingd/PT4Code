n, k = gets.split(" ").map(&:to_i)
ary = gets.split(" ").map(&:to_i)

(n-k).times do |i|
  if ary[i+k] > ary[i]
    puts "Yes"
  else
    puts "No"
  end
end
