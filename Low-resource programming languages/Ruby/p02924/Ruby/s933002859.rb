N = gets.chomp.to_i
if N == 1
  puts 0
else
  puts (1..N-1).inject(&:+)
end
