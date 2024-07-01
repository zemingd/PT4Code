N = gets.to_i
data = []

N.times do
  data << gets.split.map(&:to_i)
end

data.sort_by! do |d|
  d[1]
end

sum = 0

data.each do |d|
  sum += d[0]
  if sum > d[1]
    puts 'No'
    exit
  end
end

puts 'Yes'