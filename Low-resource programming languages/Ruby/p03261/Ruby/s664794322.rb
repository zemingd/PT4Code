N = gets.chomp.to_i
Wn = (1..N).map { gets.chomp }

if Wn != Wn.uniq
  puts 'No'
  exit
end

for i in 0...N - 1 do
  w1 = Wn[i]
  w2 = Wn[i + 1]
  if w1[w1.length - 1] != w2[0]
    puts 'No'
    exit
  end
end

puts 'Yes'
