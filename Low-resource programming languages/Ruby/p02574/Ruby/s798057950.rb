N = gets.strip.to_i
A = gets.split.map(&:to_i)

sw = false
pw = true
tg = A[0]
(0...(N-1)).each do |i|
  tg = tg.gcd(A[i+1])
  if pw
    ((i+1)...(N)).each do |j|
      if A[i].gcd(A[j]) != 1
        pw = false
      end
    end
  end
end

if !pw && tg == 1
  sw = true
end

if pw
  puts 'pairwise coprime'
elsif sw
  puts 'setwise coprime'
else
  puts 'not coprime'
end
