n, y = STDIN.readline.chomp.split(' ').map(&:to_i)

def f1(n, b10, b5, total)
  b = total / 1000
  if (n == b10 + b5 + b)
    puts "#{b10} #{b5} #{b}"
    return true
  end
  false
end

def f5(n, b10, b5, total)
  max_b5 = total / 5000
  max_b5.downto(0) do |b|
    if f1(n, b10, b, total - b * 5000)
      return true
    end
  end

  false
end

def f10(n, b10, b5, b1, total)
  max_b10 = total / 10000
  max_b10.downto(0) do |b|
    if f5(n, b, b5, total - b * 10000)
      return true
    end
  end

  puts "-1 -1 -1"
end

f10(n, 0, 0, 0, y)
