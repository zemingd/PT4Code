n = gets.chomp.to_i
ary_a = gets.split(" ").map(&:to_i)
ary_b = []

n.times do |i|
  if i.even?
    ary_b.push(ary_a[i])
  else
    ary_b.unshift(ary_a[i])
  end
end

if n.odd?
  puts ary_b.reverse.join(" ")
else
  puts ary_b.join(" ")
end
