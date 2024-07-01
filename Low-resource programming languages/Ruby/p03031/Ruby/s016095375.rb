n, m = gets.chomp.split.map(&:to_i)
ks = []

m.times do
  ks << gets.chomp.split.map(&:to_i)
end

p = gets.chomp.split.map(&:to_i)

ans = 0

[0, 1].repeated_permutation(n) do |bits|
  flag = 1
  m.times do |i|

    tmp_sum = 0

    ks[i][0].times do |j|
      tmp_sum += bits[ks[i][j+1]-1]
    end
    
    flag = 0 unless tmp_sum % 2 == p[i]
  end

  ans += 1 if flag == 1
end

puts ans

