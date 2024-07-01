n, x = gets.split.map(&:to_i)
data = $<.map(&:to_i)
min = data.min

data.sort!

cnt = 0
data.each do |i|
  if (x-i)<0
    break
  else
    x -= i
    cnt += 1
  end
end

p cnt + x/min

