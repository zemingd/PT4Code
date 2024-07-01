n, m = gets.split(' ').map!(&:to_i)
arr = gets.split(' ').map!(&:to_i)

targets = (1..m).select(&:odd?)

count = 0

targets.each do |x|
  jedge = arr.all? do |k|
    p = (x.to_f / k) - 0.5
    p.to_s.end_with?('.0') # 整数かの判定
  end

  count += 1 if jedge
end

puts count
