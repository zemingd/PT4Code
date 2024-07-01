require 'pp'
n = gets.to_i
a = gets.split.map(&:to_i)

if a.count(1) == 0
  p -1
  exit
end

ind = 1
cnt = 0
n.times do |i|
  if a[i] == ind
    ind += 1
  else
    cnt += 1
  end
end
p cnt

