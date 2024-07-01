k = gets.to_i

answer = (1..k).to_a.repeated_combination(3).map { |a, b, c|
  number = [a, b, c].uniq.size
  case number
  when 1 then a.gcd(b).gcd(c) * 1
  when 2 then a.gcd(b).gcd(c) * 3
  when 3 then a.gcd(b).gcd(c) * 6
  end
}.sum

puts answer
