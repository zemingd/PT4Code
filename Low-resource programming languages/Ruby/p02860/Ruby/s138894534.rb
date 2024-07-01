N = gets.to_i
S = gets.chomp
if N.odd?
  puts 'No'
  exit
end
a, b = S[0..(N/2-1)], S[(N/2)..-1]
puts a == b ? 'Yes' : 'No'