#!/usr/bin/env ruby
x, n = gets.chomp.split(" ").map(&:to_i)
p = gets.chomp.split(" ").map(&:to_i)

return puts x if p.empty?

diff = 0

while true
  if !p.include?(x - diff)
    puts x - diff
    break
  elsif !p.include?(x + diff)
    puts x + diff
    break
  end
  diff += 1
end
