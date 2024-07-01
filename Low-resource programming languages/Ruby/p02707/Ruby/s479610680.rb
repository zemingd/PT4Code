N = gets.to_i
A = gets.chomp.split.map(&:to_i)

h = {}
A.each do |a|
  if h[a].nil? then
    h[a] = 1
  else
    h[a] += 1
  end
end

(1..N).each do |n|
  if h[n] then
    puts h[n]
  else
    puts 0
  end
end