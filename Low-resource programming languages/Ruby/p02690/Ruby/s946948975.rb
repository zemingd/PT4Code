x = gets.to_i
(-200..200).each do |a|
  (-200..200).each do |b|
    if x == a**5 - b**5
      puts "#{a} #{b}"
      exit
    end
  end
end