A = 3.times.map{gets.split.map(&:to_i)}
N = gets.to_i
B = N.times.map{gets.split.map(&:to_i)}.flatten
check = Array.new(3){Array.new(3, false)}
B.each do |b|
  3.times do |i|
    3.times do |j|
      if b == A[i][j]
        check[i][j] = true
      end
    end
  end
end

ok = false
3.times do |i|
  if check[i][0] && check[i][1] && check[i][2]
    ok = true
  end
  if check[0][i] && check[1][i] && check[2][i]
    ok = true
  end
end

if check[0][0] && check[1][1] && check[2][2]
  ok = true
end

if check[0][2] && check[1][1] && check[2][0]
  ok = true
end

if ok
  puts "Yes"
else
  puts "No"
end
