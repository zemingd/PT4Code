lines = $stdin.read.split(?\n).map(&:to_i)
lines.each.with_index(1) do |line, i|
  puts "Case #{i}: #{line}"
  i += 1
end