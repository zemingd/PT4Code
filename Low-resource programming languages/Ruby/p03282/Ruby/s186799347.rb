s = gets.chomp.split("")
k = gets.chomp.to_i

s.each do |si|
  if si == "1"
    k -= 1
    if k <= 0
      puts 1
      exit
    end
  else
    puts si
    exit
  end
end
