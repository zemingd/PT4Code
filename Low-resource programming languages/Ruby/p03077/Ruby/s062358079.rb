cities = [0] * 6
all_members = STDIN.gets.to_i
cities[0] = all_members

capacities = [
  STDIN.gets.to_i,
  STDIN.gets.to_i,
  STDIN.gets.to_i,
  STDIN.gets.to_i,
  STDIN.gets.to_i
].reverse

def move_num(capa, mem)
  return mem if capa > mem
  capa
end

steps = 0
until cities[0].zero? && (cities[5] == all_members)
  4.downto(0) do |i|
    m = move_num(cities[i], capacities[i])
    cities[i] -= m
    cities[i+1] += m
  end
  steps += 1
end

STDOUT.puts steps