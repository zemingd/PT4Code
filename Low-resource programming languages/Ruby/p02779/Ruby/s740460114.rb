N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)

memo = {}
A.each do |a|
  if memo[a] then
    puts "NO"
    exit
  end
  memo[a] = true
end

puts "Yes"