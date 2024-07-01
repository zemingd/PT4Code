N = gets.to_i
As = gets.split.map(&:to_i)

bs, cs = As.each_slice(2).each_with_object([[], []]){|(a1, a2), (bs, cs)| bs << a1; cs << a2}.map(&:compact)
bs, cs = cs, bs if N.even?
puts (bs.reverse + cs).join(' ')