N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
count = 0

com = N * (N-1) / 2
B = A.combination(2).to_a

if A.inject(:gcd) != 1
  puts "not coprime"
else
  (0...com).each do |i|
    if B[i][0].gcd(B[i][1]) != 1
      puts "setwise coprime"
      exit
    end
  end
  puts "pairwise coprime"
end