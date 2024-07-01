def count_dig(m)
  dig = 0
  while m > 0
    m /= 10
    dig += 1
  end
  dig
end

n = gets.chomp.to_i

min_dig = count_dig(n)
mid = Math.sqrt(n).floor
(2..mid).each do |a|
  next if n % a != 0

  # always b >= a
  b = n / a

  dig = count_dig(b)
  min_dig = dig if dig < min_dig
end

puts min_dig