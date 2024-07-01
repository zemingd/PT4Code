x = gets.to_i

(-118..119).each do |a|
  (-119..118).each do |b|
    value = a**5 - b**5
    if value == x
      puts "#{a} #{b}"
      exit
    end
  end
end