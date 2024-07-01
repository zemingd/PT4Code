gets
as = gets.split.map &:to_i

diff = (as.inject(:+) - 2 * as[0]).abs

before = diff
as[1, as.size - 1].each do |a|
  tmp = before - a * 2

  diff = tmp.abs if tmp.abs < diff
  if tmp <= 0
    break
  end
  before = tmp
end

puts diff
