N, M = gets.chomp.split.map &:to_i

WORKS = N.times.map do
  gets.chomp.split.map &:to_i
end.sort_by { |v| -v[0] }.sort_by { |v| -v[1] }

money = 0
M.downto(1) do |d|
  work_index = WORKS.index { |v| v[0] <= d }
  break if work_index.nil?

  money += WORKS[work_index][1]
  WORKS.delete_at(work_index)
end

p money
