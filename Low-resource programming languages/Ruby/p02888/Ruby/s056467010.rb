sticks_length = gets.chomp.to_i
sticks = gets.chomp.split.map(&:to_i)

sticks.sort!.reverse!

result = 0
sticks.each_with_index do |long_stick, i|
  break if i + 2 > (sticks_length -1)
  for j in (i + 1)..(sticks_length -1) do
    for k in (j + 1)..(sticks_length -1) do
      break if long_stick >= sticks[j] + sticks[k]
      result += 1
    end
  end
end

puts result