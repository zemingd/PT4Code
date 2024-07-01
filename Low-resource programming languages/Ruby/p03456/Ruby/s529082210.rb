n = gets.chomp.gsub(/\s+/, "").to_i

317.times do |i|
  if i * i == n
    puts("Yes")
    return
  end
end
puts("No")