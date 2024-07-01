N = gets.to_i
xy_all = []
N.times do
  a = gets.to_i
  xys = []
  a.times do
    x, y = gets.split(' ').map(&:to_i)
    xys << [x - 1, y]
  end
  xy_all << xys
end
max = 0
(0..(2 ** N - 1)).each do |i|
  people = i.to_s(2).reverse + "0" * (N - i.to_s(2).length)
  catch :ng do
    0.upto(people.length - 1) do |i|
      next if people[i] == '0'
      xy_all[i].each do |xy|
        throw :ng if people[xy[0]].to_i != xy[1]
      end
    end
    max = [people.count("1"), max].max
  end
end
puts max