x = gets.to_i

200.times do |a|
  200.times do |b|
    if a ** 5 + b ** 5 == x
      puts "#{a} -#{b}"
      exit
    end

    if a ** 5 - b ** 5 == x
      puts "#{a} #{b}"
    end
  end
end
