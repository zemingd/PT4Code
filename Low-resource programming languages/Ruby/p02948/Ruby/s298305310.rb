N, DAYS = gets.chomp.split.map &:to_i

works = N.times.map do
  gets.chomp.split.map &:to_i
end

total = works.reduce([0, 0]) do |s, v|
  [s[0] + v[0], s[1] + v[1]]
end

if total[0] <= DAYS
  p total[1]
else
  works = works.sort_by { |v| -v[0] }.sort_by { |v| -v[1] }
  money = 0
  DAYS.downto(1) do |d|
    work_index = works.index { |v| v[0] <= d }
    break if work_index.nil?

    money += works[work_index][1]
    works.delete_at(work_index)
  end
  p money
end
