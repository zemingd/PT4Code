N = gets.to_i
S = gets.chomp

if N%2 != 0
  puts "No"
  exit
end

(N/2).times do |i|
  if S[i] != S[i+N/2]
    puts "No"
    exit
  end
end

puts 'Yes'
