s = gets.chomp
former = s[0..1].to_i
latter = s[2..3].to_i

index =
  ((former > 0 && former < 13) ? 1 : 0) +
  ((latter > 0 && latter < 13) ? 2 : 0)

puts %w(NA MMYY YYMM AMBIGUOUS)[index]
