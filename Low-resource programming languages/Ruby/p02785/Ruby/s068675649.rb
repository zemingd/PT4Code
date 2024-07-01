N, K = gets.chomp.split(" ").map(&:to_i)
H = gets.chomp.split(" ").map(&:to_i)

if K > 0
    K.times do 
        H.delete_if{|h| h == H.max}
    end
end

puts "#{H.inject(:+)}"