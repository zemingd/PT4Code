require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

b = []
a.each_with_index do |e, i|
  if i.even?
    b.push e
  else
    b.unshift e
  end
end

if a.size.odd?
  b.reverse!
end
puts b.join(' ')


