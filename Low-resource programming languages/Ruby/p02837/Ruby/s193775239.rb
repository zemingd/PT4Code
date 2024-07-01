N = gets.strip.to_i
evidences = []
max = 0
N.times do
  e = gets.strip.to_i
  one = []
  e.times do
    one.push(gets.strip.split(' ').map(&:to_i))
  end
  evidences.push one
end

[0,1].repeated_permutation(N).each do |kase|
  next unless kase.any?{ |n| n == 1 }
  validated = false
  evidences.each_with_index do |e, i|
    e.each do |person, testimony|
      if kase[i] == 1 && kase[person - 1] != testimony
        validated = true
        break
      end
    end
    break if validated
  end
  next if validated
  sum = kase.inject(:+)
  max = sum if max < sum
end
puts max