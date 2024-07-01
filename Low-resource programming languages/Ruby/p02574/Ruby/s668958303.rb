N = gets.to_i
a_array = gets.split(' ').map(&:to_i)


pairwise_flg = true

now_gcd = a_array[0]
(1..N-1).each do |i|
  now_gcd = now_gcd.gcd(a_array[i])
  if now_gcd == 1
    puts 'setwise coprime'
    exit
  end
end

(0..N-2).each do |i|
  (i+1..N-1).each  do |j|
    if a_array[i].gcd(a_array[j]) > 1
      pairwise_flg = false
      break
    end
  end
  break unless pairwise_flg
end

if pairwise_flg
  puts 'pairwise coprime'
  exit
end

puts 'not coprime'
