N, M = gets.chomp.split(" ").map(&:to_i)
route = []
M.times do |n|
  route[n] = gets.chomp.split(" ").map(&:to_i)
end
count = Array.new(N,0)
M.times do |n|
  count[route[n][0]-1] += 1
  count[route[n][1]-1] += 1
end
N.times do |n|
  print("#{count[n]}\n")
end