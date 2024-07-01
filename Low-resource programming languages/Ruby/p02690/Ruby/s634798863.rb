x = gets.chomp.to_i

-200.upto(200) do |a|
  -200.upto(200) do |b|
    if a**5 - b**5 == x
      puts "#{a} #{b}"
      exit
    end
  end
end

