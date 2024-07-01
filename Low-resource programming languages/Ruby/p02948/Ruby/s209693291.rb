N, M = gets.split.map(&:to_i)
works = {}
N.times do
  a, b = gets.split.map(&:to_i)
  works[a] ||= []
  works[a].push b
end
can = []
sum = 0
1.upto(M) do |day|
  if ws = works[day]
    can.concat ws
    can.sort!
  end
  sum += can.pop if can.length > 0
  can = can[M - day -1 .. -1]
end

p sum