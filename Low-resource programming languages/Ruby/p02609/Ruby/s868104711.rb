n = gets.to_i
x = gets.chomp

Popcount = {}
F = {}

def popcount(num)
  Popcount[num] || Popcount[num] = num.to_s(2).chars.count('1')
end

def f(num)
  return F[num] if F[num]

  tmp_num = num

  count = 0
  until tmp_num == 0
    return count += F[tmp_num] if F[tmp_num]

    tmp_num = tmp_num % popcount(tmp_num)
    count += 1
  end
  F[num] = count
end

n.times do |i|
  bit = x[i] == '0' ? '1' : '0'
  tmp_x = (x[0...i] + bit + x[i + 1..-1]).to_i(2)

  puts f(tmp_x)
end
