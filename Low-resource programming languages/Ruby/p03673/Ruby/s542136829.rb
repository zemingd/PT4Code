n = gets.to_i
as = gets.split
bs = []
if n.even?
  as.each_with_index do |a, i|
    if i.even?
      bs << a
    else
      bs.unshift(a)
    end
  end
else
  as.each_with_index do |a, i|
    if i.odd?
      bs << a
    else
      bs.unshift(a)
    end
  end
end

puts bs.join(" ")