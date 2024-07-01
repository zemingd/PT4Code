x = gets.to_i


(1..1000000).each do |n|
  if n ** 5 >= x - 1
    b = (x - n ** 5) * -1
    if b == -1
      puts "#{n} #{b}"
      exit
    elsif (b ** (1.0/5.0)).to_i == b ** (1.0/5.0)
      puts "#{n} #{(b ** (1.0/5.0)).to_i}"
      exit
    end
  end
end
