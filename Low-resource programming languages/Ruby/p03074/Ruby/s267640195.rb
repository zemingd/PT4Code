n, k = gets.split(' ').map(&:to_i)
s = gets.chomp

data = []
s.each_char do |c|
  if c == '0'
    if data.empty? or data[-1] > 0
      data.push(-1)
    else
      data[-1] -= 1
    end
  else
    if data.empty? or data[-1] < 0
      data.push(1)
    else
      data[-1] += 1
    end
  end
end

i = data[0] < 0 ? 1 : 0
m = data.length/2 + i
if k >= m
  puts n
else
  data.map!(&:abs)
  result = (0..(m-k)).map{|j|
    l = k*2 + 1 - (j == 0 ? i : 0)
    j = j*2     - (j == 0 ? 0 : i)
    data[j,l].inject(:+)
  }.max
  puts result.to_s
end
