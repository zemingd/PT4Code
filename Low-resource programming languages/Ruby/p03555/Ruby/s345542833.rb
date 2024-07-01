C1 = gets.chomp
C2 = gets.chomp

if C1[1] == C2[1]
  if C1[0] == C2[2] && C1[2] == C2[0]
    puts 'YES'
    exit
  end
end

puts 'NO'
