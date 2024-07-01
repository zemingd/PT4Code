n = gets.to_i
h = gets.split("\s").map(&:to_i)

result = 0
record = 0

n.times do |i|
  if(i == n - 1)
    if(record > result)
      result = record
    end
    puts result
    break
  end

  if(h[i] < h[i+1])
    if(record > result)
      result = record
    end
    record = 0
    next
  end

  record += 1
end
