require 'prime'
n = gets.chomp.to_i
a = gets.split.map(&:to_i)
h = {}
n.times do |i|
  p = a[i].prime_division
  p.each do |e|
    k = e.first
    v = e.last
    if h[k]
      h[k].push v
    else
      h[k] = [v]
    end
  end
end
mul = 1
max = 0
h.each do |k,v|
  if v.size == n
    sv = v.sort
    if sv[0] + 1 == sv[1]
      max = k if max < k
    end
    mul *= k ** sv[0]
  elsif v.size == (n - 1)
    max = k if max < k
  end
end
mul *= max if max > 0
puts mul
