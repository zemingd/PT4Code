S = gets.chomp
T = gets.chomp

if S.length + 1 != T.length
  puts "No" 
  return
end

S.length.times do |i|
  if S[i] != T[i]
    puts "No"
    return
  end
end

puts "Yes"