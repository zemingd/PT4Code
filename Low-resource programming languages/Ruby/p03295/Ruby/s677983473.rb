N, M = gets.chomp.split.map(&:to_i)

list = []

M.times do
  a, b = gets.chomp.split.map(&:to_i)
  list << [a, b]
end

list.sort_by!(&:first)
group = list.group_by { |(a, _b)| a }
lands = group.map { |k, v| [k, v.map(&:last).min] }

ans = 0

min = lands.first[0]
max = lands.first[1]

cut_point = 0

lands.each do |from, to|
  if !(min..max).cover?(from..to) && from <= max
    if from < max
      cut_point = max - 1
    end

    ans += 1
  end

  min = from
  max = to
end

if cut_point <= lands.last.first
  ans += 1
end

puts ans
