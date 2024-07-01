options = gets.chomp.split("").map(&:to_s)
i = 0
options.each do |o|
  if o == "o"
    i += 1
  end
end
puts (700 + 100*i)
