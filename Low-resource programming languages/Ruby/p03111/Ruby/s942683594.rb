n, a, b, c = gets.chomp.split.map(&:to_i)
l = []
n.times do
  l.push(gets.chomp.to_i)
end

mp = 10 ** 9
['A', 'B', 'C', 'x'].repeated_permutation(n) do |arr|
  tmp = 0
  aa = 0
  bb = 0
  cc = 0
  arr.each_with_index do |type, index|
    case type
    when 'A'
      if aa != 0
        tmp += 10
      end
      aa += l[index]
    when 'B'
      if bb != 0
        tmp += 10
      end
      bb += l[index]
    when 'C'
      if cc != 0
        tmp += 10
      end
      cc += l[index]
    end
  end
  if aa == 0 || bb == 0 || cc == 0
    next
  end
  tmp += (a - aa).abs
  tmp += (b - bb).abs
  tmp += (c - cc).abs
  if tmp < mp
    mp = tmp
  end
end
p mp
