N = STDIN.gets.to_i
S = STDIN.gets.chomp

if N % 2 == 0
  if S[0..(N/2 - 1)] == S[N/2..-1]
    puts 'Yes'
  else
    puts 'No'
  end
else
  puts 'No'
end
