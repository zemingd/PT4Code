require 'complex'

# 10000
n = gets.to_i

ans = (1..Math.sqrt(n).to_i).flat_map do |a|
  if n%a == 0 then
    [[a, n/a]]
  else
    []
  end
end.map{|x| x.max.to_s.length}.min

puts ans