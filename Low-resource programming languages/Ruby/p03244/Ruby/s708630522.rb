N = gets.strip.to_i
even = Hash.new(0)
odd = Hash.new(0)
all = Hash.new(0)

A = gets.strip.split.map(&:to_i)

A.unshift 0

(1..N).each_with_index do |i|
  if i.even?
    even[A[i]] += 1
  else
    odd[A[i]] += 1
  end
  all[A[i]] += 1
end


if all.size > 1
  if even.size.eql?(2) && odd.size.eql?(1)
    o1 = odd.keys.first
    puts even.select { |k, v| k != o1 }.values.first
  elsif even.size.eql?(1) && odd.size.eql?(2)
    e1 = even.keys.first
    puts odd.select { |k, v| k != e1 }.values.first
  elsif even.size.eql?(2) && odd.size.eql?(2)
    e1, e2 = even.sort.values
    o1, o2 = odd.sort.values    
    puts (e1 + o2) < (e2 + o1) ? e1 + o2 : e2 + o1
  else
    puts 0
  end 
else
  puts all.values.first / 2
end
