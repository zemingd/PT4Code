N = gets.to_i
AS = gets.chomp.split.map(&:to_i)

MAX = 10**5 + 1
m = Array.new(MAX, 0)

AS.each do |a|
  m[a] += 1
  m[a+1] += 1
  m[a-1] += 1
end

p m.max