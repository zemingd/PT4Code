$stdin = DATA
n = gets.to_i
w = []
n.times do
  w << gets.chomp
end

h = {}
w.each_with_index do |wi, i|
  if h.has_key?(wi)
    puts 'No'
    exit
  end
  if i > 0 && wi[0] != w[i - 1][-1]
    puts 'No'
    exit
  end
  h[wi] = 0
end

puts 'Yes'
