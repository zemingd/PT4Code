x = gets.to_i

-100.upto(100) do |a|
  -100.upto(100) do |b|
    if a**5 - b**5 == x
      puts "#{a} #{b}"
      exit
    end
  end
end