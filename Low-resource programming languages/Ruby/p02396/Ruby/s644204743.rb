inputs = $stdin.read.split("\n")

inputs.each.with_index(1) do |input, i|
  puts "Case #{i}: #{input}"
end