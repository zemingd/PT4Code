N, M = gets.chomp.split(' ').map(&:to_i)

target_switches = []
M.times do
  l = gets.chomp.split(' ').map(&:to_i)
  l.shift
  target_switches.push(l)
end

require_mods = gets.chomp.split(' ').map(&:to_i)

puts ([0, 1].repeated_permutation(N).map do |switches|
  M.times.map do |i|
    on_count = target_switches[i].reduce(0) { |sum, si| sum += switches[si - 1]  }
    on_count % 2 == require_mods[i] ? 1 : 0
  end.reduce(1, &:*)
end).reduce(0, &:+)
