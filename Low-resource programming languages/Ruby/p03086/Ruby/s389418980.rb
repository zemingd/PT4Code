S = gets.chomp

AGCT = [?A, ?G, ?C, ?T]
index = 0
result = ""
lens = [0]
S.each_char do |c|
  if AGCT.include? c
    result << c
  else
    lens.append(result.length)
    result=""
  end
end
lens.append(result.length)

puts lens.max()
