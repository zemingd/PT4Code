a,b,c,k = gets.split(" ").map(&:to_i)
ary = []

(1..k).each do |i|
  if i <= a
    ary = ary.push(1)
  elsif i <= a+b
    ary = ary.push(0)
  elsif i <= a+b+c
    ary = ary.push(-1)
  end
end

puts ary.sum