def checknum(i)
  if i % 3 == 0
    return i
  end
  include3(i)
end

def include3(i)
  if i % 10 == 3
    return i
  end
end

def call
  n = gets.to_i
  puts (1..n).map { |i| checknum(i) }.compact.map { |i| " #{i}" }.join
end

call