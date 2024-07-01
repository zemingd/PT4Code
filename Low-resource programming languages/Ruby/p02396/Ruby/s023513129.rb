# frozen_string_literal: true

i = 1
loop do
  x = readline.to_i
  break if x.zero?

  puts "Case #{i}: #{x}"
  i += 1
end

