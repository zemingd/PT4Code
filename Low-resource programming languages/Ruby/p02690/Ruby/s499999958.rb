X = gets.chomp.to_i

(-120..120).each do |a|
  (-120..120).each do |b|
    if a ** 5 - b ** 5 == X
      puts "#{a} #{b}"
      exit
    end
  end
end