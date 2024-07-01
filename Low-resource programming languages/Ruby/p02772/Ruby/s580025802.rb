n = gets.to_i
line = gets.chomp.split.map(&:to_i)
line.each do |a|
  if a.even?
    unless a % 3 == 0 || a % 5 == 0
      puts "DENIED"
      exit
    end
  end
  puts "APPROVED"
end
