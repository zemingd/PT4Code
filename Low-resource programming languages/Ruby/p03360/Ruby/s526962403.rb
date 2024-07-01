 A,B,C = gets.strip.split.map(&:to_i).sort.reverse
 K = gets.to_i

 K.times.each do |l|
   A = A * 2
 end

 puts A + B + C