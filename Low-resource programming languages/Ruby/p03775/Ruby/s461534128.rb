n = gets.chomp.to_i

cur_dig = n.to_s.size
cur_unit = 10 ** (cur_dig - 1)

min_dig = cur_dig
mid = Math.sqrt(n).floor
(2..mid).each do |a|
  next if n % a != 0

  # always b >= a
  b = n / a

  if b < cur_unit
    cur_dig -= 1
    cur_unit /= 10
  end

  min_dig = cur_dig if cur_dig < min_dig
end

puts min_dig