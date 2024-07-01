N = gets.to_i
a = gets.split.map(&:to_i)
m = Array.new(10**5+1,0)
a.each do |n|
  m[n-1] += 1
  m[n]   += 1
  m[n+1] += 1
end
p m.max
