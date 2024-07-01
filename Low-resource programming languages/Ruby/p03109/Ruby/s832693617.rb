h = gets.split("/").map(&:to_i)

if h[0] < 2019
  puts "Heisei"
elsif h[0] == 2019
  if h[1] <= 4
    puts "Heisei"
  else
    puts "TBD"
  end
end