require 'pp'
a, b = gets.split.map(&:to_i)
ans = []

1.upto(100000) do |n|
  x = (n*0.08).floor
  y = (n*0.1).floor
  if a == x && b == y
    ans << n
  end

end
if ans.empty?
  p -1
  exit
end
p ans.min
