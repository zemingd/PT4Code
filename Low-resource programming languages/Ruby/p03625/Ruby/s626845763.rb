n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
side = []
ac = []
is_asn = false

b = a.uniq.sort.reverse
a.each do |i|
  ac[i] += 1
end

b.each do |i|
  c = ac[i]
  if c >= 4
    if side.size == 1
      puts side[0] * i
      is_asn = true
      break
    else
      puts i * i
      is_asn = true
      break
    end
  elsif c >= 2 && c <= 4
    side << i
    if side.size == 2
      puts side[0] * side[1]
      is_asn = true
      break
    end
  end
end

puts 0 if is_asn == false
