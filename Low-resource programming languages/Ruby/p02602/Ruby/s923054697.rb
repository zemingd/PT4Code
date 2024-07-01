n,k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
pre = 1
k.times do |i|
  pre  = pre * a[i]
end
(n-k).times do |i|
  new = pre * a[k+i] / a[i]
  if new > pre
    puts "Yes"
  else
    puts "No"
  end
end