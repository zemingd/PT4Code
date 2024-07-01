N = gets.to_i
A = N.times.map do
  gets.to_i.times.map { gets.split.map!(&:to_i) }
end

max_honests = 0
(1 << N).times do |i|
  valid = true
  honests = 0
  is_honests = []
  N.times do |n|
    next if i[n] == 0

    honests += 1
    next unless valid

    A[n].each do |a|
      if a[1] != i[a[0] - 1]
        valid = false
        break
      end
    end
  end

  max_honests = honests if valid && max_honests < honests
end

puts max_honests
