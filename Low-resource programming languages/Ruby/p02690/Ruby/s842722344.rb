x = gets.chop.to_i

(-120..120).each do |i|
  (-120..120).each do |j|
    if i ** 5 - j ** 5 == x
      puts "#{i} #{j}"
      exit
    end
  end
end
