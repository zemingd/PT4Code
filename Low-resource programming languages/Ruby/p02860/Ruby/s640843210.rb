n = gets.to_i
s = gets.chomp
s<<?? if n%2>0
n=(n+1)/2
(0...n).each do |i|
  if s[i]!= s[n+i]
    puts :No
    exit
  end
end
puts :Yes