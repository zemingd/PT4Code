N = gets.to_i
S = gets

if N % 2 == 1
  puts 'No'
  exit
end

half = N / 2
if S.slice(0..half-1) == S.slice(half..N-1)
  puts 'Yes'
  exit
end
puts 'No'