x = gets.to_i
-1.upto(10000) do |a|
  -1.upto(10000) do |b|
    if x == (a ** 5 - b ** 5)
      puts "#{a} #{b}"
      break
    end
  end
end
