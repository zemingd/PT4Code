require 'prime'
n = gets.chomp.to_i
a = gets.split.map(&:to_i)
h = Hash.new([])
n.times do |i|
  p = a[i].prime_division
  p.each do |e|
    h[e.first] += [e.last]
  end
end
mul = 1
max = 0
h.each do |k,v|
  if v.size == n
    sv = v.sort
    if sv[0] + 1 == sv[1]
      mul *= k ** sv[1]
    else
      mul *= k ** sv[0]
    end
  elsif v.size == (n - 1)
    max = k if max < k
  end
end
mul *= max if max > 0
puts mul
