input_lines = readlines.map(&:chomp)
S = input_lines.shift
T = input_lines.shift

t = T.slice(0..-2)

result = if t == S
  "Yes"
else
  "No"
end

puts result