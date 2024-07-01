N, S = gets.to_i, gets.chomp
max = 0

0.upto(S.size-2) do |i|
  fh = S[0..i].split('').uniq
  rh = S[(i+1)..-1].split('').uniq
  count = (fh&rh).count
  max = count if count > max
end

puts max