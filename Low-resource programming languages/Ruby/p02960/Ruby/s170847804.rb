S = gets.chomp
pattern = /#{S.gsub("?", "\\d")}/
min = S.gsub("?", "0").to_i
start = min + (5 - (min % 13))
count = start.step(10 ** S.length, 13)
  .count { |v| pattern.match(v.to_s.rjust(S.length, "0")) }

puts count
