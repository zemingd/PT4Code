N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)

A.each do |a|
  if a % 2 == 0 && (a % 3 != 0 && a % 5 != 0)
    puts "DENIED"
    exit
  end
end
puts "APPROVED"
