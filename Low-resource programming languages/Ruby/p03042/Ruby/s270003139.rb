s = gets.chomp

former = s[(0..1)].to_i
later  = s[(2..3)].to_i

is_former_month = (1..12).include?(former)
is_later_month = (1..12).include?(later)

if is_former_month && is_later_month
  puts 'AMBIGUOUS'
  exit
end

if is_former_month
  puts 'MMYY'
  exit
end

if is_later_month
  puts 'YYMM'
  exit
end

puts 'NA'
