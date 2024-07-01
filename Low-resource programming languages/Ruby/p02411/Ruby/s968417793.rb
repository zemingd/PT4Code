while (m,f,r = gets.chomp.split.map(&:to_i)) != [-1, -1, -1]
　m = 0 if m == -1
  f = 0 if f == -1
  case m + f
  when 80..100
    puts "A"
  when 65..80
    puts "B"
  when 50..65
    puts "C"
  when 30..50
    puts r >= 50 ? "C" : "D"
  else
    puts "F"
  end
end