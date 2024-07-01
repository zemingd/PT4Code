N = gets.to_i
S = gets.chomp
if N.odd?
  puts "No"
else
  if S[(N)/2..N-1].include?(S[0..(N-1)/2])
  	puts "Yes"
  else
    puts "No"
  end
end