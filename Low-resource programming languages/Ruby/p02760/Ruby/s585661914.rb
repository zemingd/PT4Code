a = []
3.times do
  a.push(gets.split.map(&:to_i))
end

n = gets.to_i

ans = 'No'
n.times do
  b = gets.to_i
  3.times do |i|
    3.times do |j|
      a[i][j] = '○' if a[i][j] == b
      if a[i].count('○') > 2
        ans = 'Yes'
      end
    end
  end
end

3.times do |i|
  if a[0][i] == '○' && a[1][i] == '○' && a[2][i] == '○'
    ans = 'Yes'
  end
end

if a[0][0] == '○' && a[1][1] == '○' && a[2][2] == '○'
  ans = 'Yes'
end

if a[0][2] == '○' && a[1][1] == '○' && a[2][0] == '○'
  ans = 'Yes'
end

puts ans