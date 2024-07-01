S = gets.chomp.split("").map(&:to_i)

for i in 0..S.length-1
  if S[i] == S[i+1] then
    puts "Bad"
    break
  elsif i == (S.length-1)
    puts "Good"
    break
  end
end