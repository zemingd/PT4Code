n = gets.to_i
array = gets.split(" ").map(&:to_i)

(1..n).each do |i|
  if array[i-1] % 2 == 0
    if array[i-1] % 3 == 0 || array[i-1] % 5 == 0
    else
      puts "DENIED"
      exit
    end
  end
end

puts "APPROVED"
