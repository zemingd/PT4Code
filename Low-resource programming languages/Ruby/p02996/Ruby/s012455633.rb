n = gets.to_i
a = Array.new(n).map{Array.new(2, 0)}
0.upto(n - 1) do |i|
  a[i][0], a[i][1] = gets.split.map(&:to_i)
end
a.sort!{|a, b| a[1]<=>b[1] || b[0]<=>a[0]}
ans = 0
0.upto(n - 1) do |i|
  ans += a[i][0]
  if ans > a[i][1]
    puts "No"
    exit
  end
end
puts "Yes"