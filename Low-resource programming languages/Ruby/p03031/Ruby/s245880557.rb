N, M = gets.split(' ').map(&:to_i)
light = []
M.times do
  switches = gets.split(' ').map(&:to_i)
  light.push(switches[1..N])
end
on = gets.split(' ').map(&:to_i)

cnt = 0
[0, 1].repeated_permutation(N).each do |ss|
  allon = true
  M.times do |i|
    if light[i].select{|j| ss[j - 1] == 1}.size % 2 != on[i]
      allon = false
    end
  end
  cnt += 1 if allon
end

puts cnt