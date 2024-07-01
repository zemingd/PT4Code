n, k = gets.split(" ").map(&:to_i)
ary = gets.split(" ").map(&:to_i)
s = ary[0..(k-1)].inject(:*)

(n-k).times do |i|
  t = s / ary[i] * ary[i+k]
  if s < t
    puts "Yes"
  else
    puts "No"
  end
  s = t
end