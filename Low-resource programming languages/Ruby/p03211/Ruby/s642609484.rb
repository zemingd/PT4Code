S = gets.chomp.chars
p S.each_cons(3).map{|s|
  ((s*"").to_i - 753).abs
}.min