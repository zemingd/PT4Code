x = gets.to_i
jun = gets.chomp.split(" ").map(&:to_i)
man = gets.chomp.split(" ").map(&:to_i)
tui = gets.chomp.split(" ").map(&:to_i)

i = 1
(x-1).times do
  if jun[i-1] == jun[i] - 1
    un = jun[i] - 1
    man[un] += tui[un-1].to_i
    i += 1
  else
  i += 1
  end
end

puts man.sum

