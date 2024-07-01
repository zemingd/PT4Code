n = gets.to_i
a = Array.new(n){gets.split.map(&:to_i)}
a.sort_by!{|a| a[1]}
ans = 0
n.times do |i|
  ans += a[i][0]
  if ans > a[i][1]
    puts "No"
    exit
  end
end
puts "Yes"