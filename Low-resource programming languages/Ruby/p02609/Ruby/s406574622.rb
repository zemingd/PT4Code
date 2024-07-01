INF = 10 ** 100
n = gets.to_i
x = gets.chomp

def popcount(num)
  num.to_s(2).count('1')
end

start_count = x.count('1')
plus = start_count + 1
plus_contribution = [1]
minus = start_count - 1
minus_contribution = [1]
(n - 1).times do |i|
  plus_contribution.unshift(plus_contribution.first * 2 % plus)
  minus_contribution.unshift(minus_contribution.first * 2 % minus)
end

plus_default = 0
minus_default = 0
x.each_char.with_index do |c, i|
  next if c == '0'
  plus_default += plus_contribution[i]
  minus_default += minus_contribution[i]
end

x.each_char.with_index do |c, i|
  count = 1
  case c
  when '0'
    current = (plus_default + plus_contribution[i]) % plus
  else
    if start_count == 1
      puts 0
      next
    end
    current = (minus_default - minus_contribution[i]) % minus
  end
  until current == 0
    current %= popcount(current)
    count += 1
  end
  puts count
end
