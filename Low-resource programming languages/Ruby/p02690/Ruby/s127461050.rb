n = gets.chomp.to_i
(-120).upto(120).each do |a|
  (-120).upto(120).each do |b|
    if a**5-b**5 == n
      puts "#{a} #{b}"
      exit
    end
  end
end