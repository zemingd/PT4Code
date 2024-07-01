N, M = gets.split.map(&:to_i)
menu = Hash.new(0)
N.times do
  k, *a = gets.split.map(&:to_i)
  a.each do |m|
    menu[m] += 1
  end
end
p menu.select{|m, c| c == N}.size