
a = gets.to_s
b = a[0..1].to_i
c = a[2..3].to_i


if b <=  99 && c <= 12 && b <= 12 && c <= 99 && c != 0
  answer = 'AMBIGUOUS'
elsif b <=  99 && c <= 12 && c != 0
  answer =  'YYMM'
elsif b <= 12 && c <= 99 && c != 0
  answer = 'MMYY'
else answer = 'NA'
end

puts b
puts c
puts answer
