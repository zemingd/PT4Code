N = gets.to_i
AS = gets.chomp.split.map(&:to_i)

MAX = 10**5 + 1
m = Array.new(MAX, 0)
minus = 0

AS.each do |a|
  m[a] += 1
  m[a+1] += 1
  if a - 1 < 0
    minus += 1
  else
    m[a-1] += 1
  end
end

p [m.max, minus].max