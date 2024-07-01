x = gets.to_i


(1..1000000).each do |n|
  if n ** 5 > x
    b = (x - n ** 5) * -1
    if b == -1
      puts "#{n} #{b}"
      exity
    else
      puts "#{n} #{(b ** (1.0/5.0)).to_i}"
      exit
    end
  end
end
