n,m = gets.split.map(&:to_i)
s = 0
s = [*(1..n)].combination(2).to_a.size
if m > 1
  s += [*(1..m)].combination(2).to_a.size
end
puts s