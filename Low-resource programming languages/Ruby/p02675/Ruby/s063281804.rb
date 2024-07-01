N = gets.chomp

HON = %w[2 4 5 7 9]
PON = %w[0 1 6 8]
BON = %w[3]

result = if HON.include?(N[-1])
  "hon"
elsif PON.include?(N[-1])
  "pon"
elsif BON.include?(N[-1])
  "bon"
else
  ""
end
puts result
 