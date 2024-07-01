result = []
ary = readlines.map(&:chomp)

if ary.size < 3
  ary.each_with_index do |v, k|
    next if k == 0
    a, b = v.split(" ").map(&:to_i)
    new_ary = (a..b).to_a
  
    if result.size == 0
      result = new_ary
      next
    end
  
    tmp = []
    result.each do |value|
      if new_ary.include?(value)
        tmp << value
      end
    end
    result = 0
    result = tmp
  end
  puts result.size
else
  a, b = ary[1].split(" ").map(&:to_i)
  puts (a..b).to_a.size
end


