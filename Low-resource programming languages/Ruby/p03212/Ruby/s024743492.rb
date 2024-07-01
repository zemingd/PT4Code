def f(*a)
  return a if a.max > @max
  a << a.map { |aa| [aa * 10 + 3, aa * 10 + 5, aa * 10 + 7]}.flatten.uniq.map { |aa| f(aa) }.flatten.uniq
end

@max = gets.chomp.to_i

ll = f(3, 5, 7)
count = 0
ll.flatten!
ll.reject! { |n| n > @max  }
ll.each do |n|
  n = n.to_s
  if n.count('3') >= 1 && n.count('5') >= 1 && n.count('7') >= 1
    count += 1 
  end
end

puts count
