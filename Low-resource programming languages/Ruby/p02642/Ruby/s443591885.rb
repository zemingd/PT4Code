def judge(i, as)
  count = 0
  as.each do |j|
    if i % j === 0
      return false if count > 0
      count += 1
    end
  end
  return true
end

def main()
  num = gets.to_i
  as = gets.split.map(&:to_i)
  
  as.select { |i| judge(i, as) }.count
end

print main