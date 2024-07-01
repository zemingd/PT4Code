x = gets.to_i
(-120).upto(120) do |i|
  (-120).upto(120) do |j|
    if i**5 - j**5 == x
      puts "#{i} #{j}"
      exit
    end
  end
end