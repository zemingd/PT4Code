n = gets.chomp.to_i
foundY = false
gets.chomp.split.each do |c|
  if c == 'Y'
    foundY = true
  end
end

puts foundY ? "Four" : "Three"
