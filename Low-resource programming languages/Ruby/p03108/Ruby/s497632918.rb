require 'matrix'

N, M = gets.chomp.split.map(&:to_i) # No. of islands, bridges
bridges = []
M.times do
  bridges.push gets.chomp.split.map(&:to_i)
end

def bridge_islands(islands, bridge)
  if islands.length == 1 then return islands end
  is1 = islands.find{|is| is.include? bridge[0]}
  islands.delete(is1)
  is2 = islands.find{|is| is.include? bridge[1]}
  islands.delete(is2)
  new_is = is1 + is2
  islands.push new_is
  islands
end

def count_inconvenience(islands)
  N*(N-1)/2 - islands.map{|is| is.length * (is.length - 1) / 2}.reduce(&:+)
end

n = N*(N - 1)/2
ns = [n]
islands = (1..N).map{|n| [n]}
(M-1).times do
  new_bridge = bridges.pop
  new_islands = bridge_islands(islands, new_bridge)
  n = count_inconvenience(new_islands)
  ns.unshift(n)
  islands = new_islands
end

ns.each do |n| print("#{n}\n") end