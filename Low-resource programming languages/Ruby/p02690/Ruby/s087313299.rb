x = gets.to_i

-1000.upto(1000) do |a|
  -1000.upto(1000) do |b|
    if a**5 - b**5 == x
      puts "#{a} #{b}"
      exit
    end
  end
end