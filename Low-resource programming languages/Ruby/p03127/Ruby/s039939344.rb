n = gets.to_i
as = gets.split(" ").map(&:to_i)
as.sort!

ans = as[0]

even_min = nil
odd_min = nil

as.each do |a|
  break if even_min && odd_min
  if a.even?
    if even_min
      next
    end
    even_min = a
  else
    if odd_min
      next
    end
    odd_min = a
  end
end

n.times.with_index(1) do |i|
  break if as[i].nil?
  tmp1 = nil
  tmp2 = nil
  if odd_min
    tmp1 = as[i] % odd_min
    ans = [ans, tmp1].min if tmp1 != 0
  end
  if even_min
    tmp2 = as[i] % even_min
    ans = [ans, tmp2].min if tmp2 != 0
  end

  if tmp1 && tmp1 > 0
    if tmp1.even?
      even_min = [even_min, tmp1].min
    else
      odd_min = [odd_min, tmp1].min
    end
  end
  if tmp2 && tmp2 > 0
    if tmp2.even?
      even_min = [even_min, tmp2].min
    else
      odd_min = [odd_min, tmp2].min
    end
  end
end

puts ans