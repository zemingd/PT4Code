n = gets.to_i
a = Array.new(n){gets.split.map(&:to_i)}
a.sort_by!{|x| x[1]}
ans = 0
a.each do |x, y|
  ans += x
  if ans > y
    puts "No"
    exit
  end
end
puts "Yes"