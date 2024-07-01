S = gets.chomp
K = gets.to_i

if S.chars.all? { |ch| ch ==  '1' }
  puts 1
else
  if K > 100
    puts S.chars.find { |ch| ch > '1' }
  else
    if S[0..(K - 1)].chars.all? { |ch| ch == '1' }
      puts 1
    else
      puts S.chars.find { |ch| ch > '1' }
    end
  end
end
