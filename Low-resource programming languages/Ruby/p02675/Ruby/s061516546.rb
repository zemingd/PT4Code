N = gets.split(" ")[0][-1]
answer = if %w(2 4 5 7 9).include?(N)
  "hon"
elsif %w(0 1 6 8).include?(N)
  "pon"
else
  "bon"
end

puts answer
