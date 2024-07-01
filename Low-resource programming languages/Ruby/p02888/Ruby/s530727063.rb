_ = gets
l = gets.chomp.split(" ").map(&:to_i)
sorted = l.sort_by{ |e| e }
max = sorted[-1]

ct1 = Array.new(max+1){0}
ct2 = Array.new(max+1){0}
l.each do |e|
  ct1[e] += 1
  (0...e).each do |i|
    ct2[i] += 1
  end
end

sum = 0

sc = sorted.count
(0...sc-2).each do |i|
  (i+1...sc-1).each do |j|
    ssum = sc-1-j
    if sorted[i]+sorted[j] <= max
      ssum -= ct1[sorted[i]+sorted[j]]+ct2[sorted[i]+sorted[j]]
    end
    sum += ssum
  end
end

p sum
