N = gets.to_i

bekijousuu = [1]

(2..(1000**0.5).to_i).each do |b|
  (2..99999).each do |p|
    break if b**p>N
    bekijousuu[b**p] = b**p
  end

end
bekijousuu = bekijousuu.compact

puts bekijousuu.reverse.find {|x| x<=N }
