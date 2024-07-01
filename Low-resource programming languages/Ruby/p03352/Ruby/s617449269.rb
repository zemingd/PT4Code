X = gets.to_i

if X == 1
  puts 1
  exit 0
end

ans = 0
k = Math.sqrt(X).to_i
2.upto(k) do |b|
  pw = b
  while pw <= X
    ans = [ans, pw].max
    pw *= b
  end
end

puts ans
