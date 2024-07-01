gets
as = gets.split.map &:to_i

diff = as.inject(:+).abs

before = diff
as.each do |a|
  tmp = before - 2 * a

  diff = tmp.abs if tmp.abs < diff
  before = tmp
end

puts diff
