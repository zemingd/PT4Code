n, k = gets.split.map(&:to_i)
cnt = Hash.new(0)

n.times do
  a, b = gets.split.map(&:to_i)
  cnt[a] += b
end

cur = 0
cnt.map { |k, v| [k, v] }.sort.each do |x, c|
  # p [cur, k, c]
  if cur <= k && k < cur + c
    puts x
    break
  end
  cur += c
end
