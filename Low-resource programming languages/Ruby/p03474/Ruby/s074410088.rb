A, B = gets.split.map &:to_i
S = gets.chomp.chars

S.size.times do |i|
  next if (i == A && S[i] == '-') || (i != A && S[i] =~ /[0-9]/)
  puts 'No'
  exit
end
puts 'Yes'