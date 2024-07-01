N = gets.to_i
A = gets.split.map(&:to_i)

hash = {}
A.each do |a|
  if hash[a]
    puts "NO"
    exit
  end
  hash[a] = true
end

puts "YES"