N = gets.to_i
a_array = gets.split(' ').map(&:to_i)


setwise_flg = false


now_gcd = a_array[0]
(1..N-1).each do |i|
  now_gcd = now_gcd.gcd(a_array[i])
  if now_gcd == 1
    setwise_flg = true
    break
  end
end

pairwise_flg = true
if setwise_flg
  (0..N-2).each do |i|
    (i+1..N-1).each  do |j|
      if a_array[i].gcd(a_array[j]) > 1
        pairwise_flg = false
        puts 'not coprime'
        exit
      end
    end
    break unless pairwise_flg
  end
end

if pairwise_flg
  puts 'pairwise coprime'
  exit
end

puts 'not coprime'
