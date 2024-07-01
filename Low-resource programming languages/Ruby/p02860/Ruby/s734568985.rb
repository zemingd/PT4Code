N = gets.to_i
S = gets.strip.to_s
if N%2==1
  puts "No"
else
  if S[0..N/2-1]==S[N/2..N-1]
    puts "Yes"
  else
    puts "No"
  end
end