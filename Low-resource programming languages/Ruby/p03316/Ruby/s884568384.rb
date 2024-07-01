N = gets.to_i
if N % N.to_s.split("").map{|s| s.to_i}.inject(:+) == 0
    puts 'Yes'
else
    puts 'No'
end

