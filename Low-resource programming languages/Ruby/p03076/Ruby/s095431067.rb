arr = (0...5).map { gets.to_i }
@min_amari = 10
@min_amari_v = nil
arr.each do |num|
  amari = num % 10 
  if amari > 0 && @min_amari > amari
    @min_amari = amari
    @min_amari_v = num
  end
end

sum = 0
non_last = true
arr.each do |v|
  if (v == @min_amari_v || v % 10 == 0) && non_last
    sum += v
    non_last = false
  else
    sum += (v + 10 - (v % 10))
  end
end

puts sum
