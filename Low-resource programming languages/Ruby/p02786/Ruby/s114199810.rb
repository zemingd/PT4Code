
h, n = gets.split.map(&:to_i)

array = []
readlines.map(&:chomp!).each do |line|
  a, b =line.split.map(&:to_i)
  array.push [a, b]
end

array.sort_by! { |item| item[0].quo item[1] }
array.uniq! {  |item| item[0].quo item[1] }
puts array.inspect
cospa1 = array.pop

mp = 0
loop do
  break if h <= 0

  if cospa1[0] <= h or array.empty?
    h -= cospa1[0]
    mp += cospa1[1]
  else
    cospa1 = array.pop
  end
end

puts mp
