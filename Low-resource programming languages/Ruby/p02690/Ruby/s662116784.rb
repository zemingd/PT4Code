x = gets.to_i
1.upto(1000) do |a|
  a.downto(-1000) do |b|
    if a ** 5 - b ** 5 == x
      puts "#{a} #{b}"
      exit
    end
  end
end