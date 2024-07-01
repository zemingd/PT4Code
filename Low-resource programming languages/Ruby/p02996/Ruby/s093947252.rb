N = gets.chomp.to_i

w = []

N.times do
  a, b = gets.chomp.split.map(&:to_i)
  w << [a, b]
end

current = 0

w.sort_by!{|_, x| x}

N.times do |i|

  if current + w[i][0] > w[i][1]
    puts 'No'
    exit
  end

  current += w[i][0]
end

puts 'Yes'
