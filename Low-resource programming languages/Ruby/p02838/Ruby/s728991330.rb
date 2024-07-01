gets
vals = gets.split.map(&:to_i)

cnts = []
64.times do |k|
  c = 0
  vals.each do |v|
    c += 1 if v[k] == 1
  end
  cnts << c
end

#p cnts

sum = 0
64.times do |k|
  c = cnts[k]

  vals.size.times do |i|
    vals.size.times do |j|
      next if i < j
      if i < c && j < c
      elsif i < c || j < c
        sum += 2 ** k
      end
    end
  end
end

p sum % (10 ** 9 + 7)
