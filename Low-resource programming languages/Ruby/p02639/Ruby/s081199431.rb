a = gets.chomp.split(" ").map(&:to_i)
i = 0
a.each do |e|
  i += 1
  if e == 0
    puts("#{i}")
    break
  end
end