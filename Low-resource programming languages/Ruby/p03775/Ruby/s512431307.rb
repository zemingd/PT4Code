def count_dig(m)
  dig = 0
  while m > 0
    m /= 10
    dig += 1
  end
  dig
end

n = gets.chomp.to_i
cur_dig = count_dig(n)

min_dig = cur_dig
mid = Math.sqrt(n).floor
(2..mid).each do |a|
  next if n % a != 0

  # always b >= a
  b = n / a

  cur_dig = count_dig(b) if b < 10 ** (cur_dig - 1)
  min_dig = cur_dig if cur_dig < min_dig
end

puts min_dig