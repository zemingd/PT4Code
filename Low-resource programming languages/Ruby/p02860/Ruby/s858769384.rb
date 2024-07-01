N=gets.to_i
S=gets.chomp
if N.odd?
  puts "No"
  exit
end
(N/2).times do |i|
  if S[i]!=S[N/2+i]
    puts "No"
	exit
  end
end
puts "Yes"