a = 3.times.map { gets.split.map(&:to_i) }
n = gets.chomp.to_i
b = []
ans = "N0"
n.times do
  b.push(gets.chomp.to_i)
end

b.each do |b|
  3.times do |i|
    3.times do |j|
      if a[i][j] == b then
        a[i][j] = -1
      end
    end
  end
end

ans = "Yes" if (a[0][0] + a[0][1] + a[0][2] == -3)
ans = "Yes" if (a[1][0] + a[1][1] + a[1][2] == -3)
ans = "Yes" if (a[2][0] + a[2][1] + a[2][2] == -3)

ans = "Yes" if (a[0][0] + a[1][0] + a[2][0] == -3)
ans = "Yes" if (a[0][1] + a[1][1] + a[2][1] == -3)
ans = "Yes" if (a[0][2] + a[1][2] + a[2][2] == -3)

ans = "Yes" if (a[0][0] + a[1][1] + a[2][2] == -3)
ans = "Yes" if (a[0][2] + a[1][1] + a[2][0] == -3)

puts "#{ans}"
