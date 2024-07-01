X, Y, Z, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i).sort.reverse
B = gets.chomp.split.map(&:to_i).sort.reverse
C = gets.chomp.split.map(&:to_i).sort.reverse

tastes = []
A.each do |a|
  B.each do |b|
    C.each do |c|
      tastes << a + b + c
    end
  end
end
tastes.sort!.reverse!

K.times do |i|
  puts tastes[i]
end