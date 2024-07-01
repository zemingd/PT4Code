N = gets.to_i
Y = gets.to_i

(0..N).each do |mi|
  (0..N-mi).each do |gi|
    (0..N-mi-gi).each do |si|
      if Y == 10000*mi + 5000*gi + 1000*si
        puts "#{mi} #{gi} #{si}"
        exit
      end
    end
  end
end

puts -1,-1,-1
