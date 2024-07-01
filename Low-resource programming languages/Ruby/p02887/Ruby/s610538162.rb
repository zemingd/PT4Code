n = gets
slime = gets.chomp

slimes = slime.split("")
merged_slime = ""

slimes.each_with_index do |s, i|
  if i == 0
    merged_slime += s
    next
  end

  merged_slime += s if slimes[i-1] != s
end

puts merged_slime.size