N = gets.to_i
S = gets.chomp
H = N / 2
S1, S2 = S.scan(/.{1,#{H}}/)
if N % 2 == 0
  if S1 == S2
    puts "Yes"
  else
    puts "No"
  end
else
end
