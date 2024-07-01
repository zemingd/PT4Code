x = gets.to_i
num = gets.chomp.split(" ").map(&:to_i)

num.each do |i|
  next if i.odd?
    if i % 3 != 0 && i % 5 != 0
      puts "DENIED"
      exit
    end
end

puts "APPROVED"
