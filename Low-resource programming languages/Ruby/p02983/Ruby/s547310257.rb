L, R = gets.split.map(&:to_i)

counter = 2020
right = [R, L + 2020].min
(L..right).each do |i|
  ((i + 1)..[R, i + 2020].min).each do |j|
    r = i * j % 2019
    counter = r if counter > r
  end
end
p counter