def gets_num
  gets.split("\s").map(&:to_i)
end

x = gets.to_i
a = 0
result = nil

loop do
  if a**5 == x
    result = [a, 0]
    break
  elsif a**5 > x
    0.upto(a) do |b|
      if (a**5 - b**5).abs == x
        result = [a, b]
        break
      end
    end
  else
    0.downto(-a) do |b|
      if (a**5 - b**5).abs == x
        result = [a, b]
        break
      end
    end
  end
  break if result

  a += 1
end

a, b = result

print (a**5 - b**5) > 0 ? [a, b].join("\s") : [b, a].join("\s")
