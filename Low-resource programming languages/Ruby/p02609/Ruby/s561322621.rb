n = gets.to_i
x = gets.chomp

Popcount = {}

def popcount(num)
  Popcount[num] || Popcount[num] = num.to_s(2).chars.count('1')
end

def f(num)
  count = 0
  until num == 0
    num = num % popcount(num)
    count += 1
  end
  count
end

n.times do |i|
  bit = x[i] == '0' ? '1' : '0'
  tmp_x = (x[0...i] + bit + x[i + 1..-1]).to_i(2)

  puts f(tmp_x)
end
