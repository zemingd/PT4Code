num = gets.to_i
data = readline.chomp.split(" ").map(&:to_i)
selected = data.select { |d| d % 2 == 0 }

count = 0

selected.each do |d|
 if (d % 3 == 0) || (d % 5 == 0)
    count += 1
 end
end

puts  count == selected.count ? "APPROVED" : "DENIED"