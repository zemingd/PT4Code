S = gets.chomp
K = gets.to_i

no_one = nil
K.times do |i|
  if S[i] != '1'
    no_one = S[i]
    break
  end
end

if no_one
  puts no_one
else
  puts 1
end
