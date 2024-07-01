def checknum(i)
  if i % 3 == 0
    return i
  end
  include3(i)
end

def include3(i, x = nil)
  x = i unless x
  if x % 10 == 3
    return i
  end
  if x / 10 != 0
    return include3(i, x / 10)
  end
end

def call
  n = gets.to_i
  puts (1..n).map { |i| checknum(i) }.compact.map { |i| " #{i}" }.join
end

call