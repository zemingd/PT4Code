N = gets.chomp.to_i
S = gets.chomp

if N.odd?
  puts "No"
else
  if S[0, N / 2] == S[N / 2, N / 2]
    puts "Yes"
  else
    puts "No"
  end
end
