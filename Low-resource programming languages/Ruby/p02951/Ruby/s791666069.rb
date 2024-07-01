n = gets.scan(/\d+/)[0]
i = n.size
p ( if i > 1
      x = i.even? ? 0 : n.to_i - 10**(i-1) +1
      x + "090909"[1-i..-1].to_i
    else
      n.to_i
    end)
