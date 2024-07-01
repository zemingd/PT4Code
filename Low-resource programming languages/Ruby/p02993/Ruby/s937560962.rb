S = gets.chomp

S.chars.each_with_index do |s,i|
  next if i == 0
  
  if S == S[i-1]
    puts "Bad"
    exit
  end
end

puts "Good"