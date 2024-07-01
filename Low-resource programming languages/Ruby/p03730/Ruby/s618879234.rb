A,B,C = gets.split.map(&:to_i)

B.times do |n|
  if A*(n+1)%B == C
    puts "YES"
    exit
  end
end
puts "NO"