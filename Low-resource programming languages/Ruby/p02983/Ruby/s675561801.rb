def main(l,r)
  goudousiki = Array.new(2019)
  (L..R).each do |i|
    mod = i % 2019
    goudousiki[mod] = 0 if goudousiki[mod].nil?
    goudousiki[mod] += 1
    break if !goudousiki[0].nil? && goudousiki[0] > 0
  end
  (0..2018).each do |i|
    if !goudousiki[i].nil? && goudousiki[i] > 0
      alt = 1
      alt = 0 if goudousiki[i] > 1
      (i+alt..2018).each do |j|
        if !goudousiki[j].nil? && goudousiki[j] >0
          return i * j
        end
      end
    end
  end
end


L, R = gets.chomp.split.map(&:to_i)

p main(L, R)