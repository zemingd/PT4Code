n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

a_arr.each do |a|
  if a % 2 == 0 then
    unless a % 3 == 0 || a % 5 == 0 then
      puts "DENIED"
      exit
    end
  end
end

puts "APPROVED"
