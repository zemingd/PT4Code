MOD = 1_000_000_007
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

lim = 100
bit_count = Array.new(lim, 0)
de = false

a.each do |num|
  lim.times do |i|
    bit_count[i] += num[i]
  end
end

p ['init', bit_count] if de

ans = 0

a.each_with_index do |num, index|
  lim.times do |i|
    bit_count[i] -= num[i]
  end

  p ['u bit', bit_count.reverse] if de
  new_bit_count = bit_count.dup
  lim.times do |i|
    if num[i] == 1
      new_bit_count[i] = n - 1 - index - new_bit_count[i]
    end
  end
  p ['r bit', new_bit_count.reverse] if de

  new_sum = 0
  carry = 0
  lim.times do |i|
    count = new_bit_count[i] + carry
    new_sum += (count % 2) * (1 << i)
    carry = count / 2
  end

  ans = (ans + new_sum) % MOD
  p [new_sum, ans] if de
end

puts ans