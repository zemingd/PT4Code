x = gets.chomp.split.map(&:to_i)

x.each.with_index do |t, i|
  if t == 0
    puts i + 1
    break
  end
end
