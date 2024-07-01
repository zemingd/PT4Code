n = gets.chop.to_i
s = gets.chop.split.map(&:to_i)
i = []
s.length.times { i << 0 }
 
i[s.each_with_index.max[1]] += 1
ind = 1
n.times do
  next_gen = i
  i.each_with_index do |v, k|
    next if v.zero?
    slime_count = v
    slime = s[k]
    while slime > 1 do
      slime -= 1
      didit = 0
      s.each_index.select do |index|
        if s[index] == slime && next_gen[index] == 0
          next_gen[index] += 1
          didit = 1
          break
        end
      end
      break if didit == 1
    end
  end
  i = next_gen
  ind += 1
end
puts i.min > 0 ? 'Yes' : 'No'
