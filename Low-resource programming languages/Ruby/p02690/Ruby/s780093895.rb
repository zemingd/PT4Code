x = gets.to_i

(-120..120).each do |i|
  (-120..120).each do |j|
    if i ** 5 - j ** j == x
      puts "#{i} #{j}" 
      return
    end
  end
end
