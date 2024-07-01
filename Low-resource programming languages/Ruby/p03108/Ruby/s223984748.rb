require 'matrix'

N, M = gets.chomp.split.map(&:to_i) # No. of islands, bridges
bridges = []
M.times do
  bridges.push gets.chomp.split.map(&:to_i)
end

NN = N*(N - 1)/2

def bridge_islands(islands, bridge)
  if islands.find{|is| is.include? bridge[0]}.include? bridge[1] then return islands end
  is1 = islands.find{|is| is.include? bridge[0]}
  islands.delete(is1)
  is2 = islands.find{|is| is.include? bridge[1]}
  islands.delete(is2)
  new_is = is1 + is2
  islands.push new_is
  islands
end

def count_inconvenience(islands)
  NN - islands.map{|is| len = is.length; len * (len - 1) / 2}.reduce(&:+)
end

n = NN
ns = [n]
islands = (1..N).map{|n| [n]}
(M-1).times do
  new_bridge = bridges.pop
  new_islands = bridge_islands(islands, new_bridge)
  n = count_inconvenience(new_islands)
  ns.unshift(n)
  if n == 0
    (M - ns.length).times{ns.unshift(0)}
    break
  end
  islands = new_islands
end

ns.each do |n| print("#{n}\n") end