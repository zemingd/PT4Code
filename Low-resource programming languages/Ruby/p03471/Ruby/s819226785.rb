n, y = gets.chomp.split.map(&:to_i)

0.upto(n) do |ichiman|
  nokori = n - ichiman
  0.upto(nokori) do |gosen|
    sen = n - ichiman - gosen
    if (10000 * ichiman + 5000 * gosen + 1000 * sen === y) 
      puts "#{ichiman} #{gosen} #{sen}"
      exit
    end
  end
end

puts '-1 -1 -1'
