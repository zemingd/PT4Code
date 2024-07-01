N, Y = gets.chomp.split(" ").map(&:to_i)

count = 0
catch(:break_loop) do
  (0..N).each {|ten|
    (0..N-ten).each{|five|
      if 10000*ten + 5000*five + 1000*(N-ten-five) == Y
        puts "#{ten} #{five} #{N-ten-five}"
        count += 1
        throw :break_loop
      end
    }
  }
end
  
if count == 0
  puts "-1 -1 -1"
end
