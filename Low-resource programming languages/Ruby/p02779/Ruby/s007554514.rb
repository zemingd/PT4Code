N = gets.chomp.to_i
A = gets.split.map(&:to_i)
memory = Array.new(N)

A.each do |a|
  if memory[a] == 1
    puts "NO"
    exit
  end
  memory[a] = 1
end
puts "YES"
