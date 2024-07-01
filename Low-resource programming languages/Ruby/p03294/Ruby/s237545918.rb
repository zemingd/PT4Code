N = gets.to_i
ary = gets.split(" ").map!{|x| x.to_i}

def f(m, ary)
  sum = 0
  ary.each do |a|
    sum += m%a
  end
  return sum
end

result = nil
puts ary.max*2

((ary.max+1)**2).times do |i|
  y = f(i, ary)
  result = y if result.nil? || result < y
end

puts result
