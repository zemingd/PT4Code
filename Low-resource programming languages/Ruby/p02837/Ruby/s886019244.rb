n = gets.to_i
peoples = []
n.times do
  a = gets.to_i
  tms = []
  a.times do
    tms.push(gets.split.map(&:to_i))
  end
  peoples.push(tms)
end

max = 0

[0, 1].repeated_permutation(n) do |bits|
  i = 0
  everyoneHonest = true
  bits.each do |bit|
    if bit == 1
      tms = peoples[i]
      tms.each do |tm|
        if bits[tm[0] - 1] != tm[1]
          everyoneHonest = false
          break
        end
      end
    end
    i += 1
  end
  if everyoneHonest
    max = [max, bits.count(1)].max
  end
end

print max