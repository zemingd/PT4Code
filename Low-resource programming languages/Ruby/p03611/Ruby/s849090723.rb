n = gets.to_i
a = gets.chomp.split.map(&:to_i)

ans = Array.new(10 ** 5 + 1, 0)
min = 0

a.each do |i|
  ans[i] += 1
  ans[i + 1] += 1
  if i.zero?
    min += 1
  else
    ans[i - 1] += 1
  end
end

p [ans.max, min].max