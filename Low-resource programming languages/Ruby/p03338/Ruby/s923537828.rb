N = gets
S = gets.chomp

max = 0
1.upto(S.length - 1) do |i|
  a = S[0..i].split('').uniq
  b = S[i+1..-1].split('').uniq
  count = (a & b).count
  max = [max, count].max
end

p max
