N = gets.to_i
S = gets.chomp

max = 0
for i in 0..(N - 1) do
  l = S[0..i]
  r = S[(i+1)..(N-1)]

  count = 0
  'a'.upto('z') do |a|
    count += 1 if l.index(a) && r.index(a)
  end
  max = [max, count].max
end

puts max
