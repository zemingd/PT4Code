# 深さ優先探索すると10の10乗のオーダー。
# たどりつけるかどうか判定

# 各々、自分のグループ以外の島の数を数える。合計して半分にするとそれが答え。

class Island
  @@id_counter = 1
  attr_accessor :id, :connections, :checked
  def initialize
    @id = @@id_counter
    @connections = []
    @@id_counter += 1
    @checked = false
  end

  def connect(to)
    connections << to
  end

  def remove(to)
    connections.delete(to)
  end
end

N, M = gets.chomp.split.map(&:to_i)
$islands = Array.new(N) { Island.new }

$connections = []
M.times do |i|
  from, to = gets.chomp.split.map(&:to_i)
  $connections.push([from, to])
  $islands[from - 1].connect(to)
  $islands[to - 1].connect(from)
end

# なんとなくソート
$islands.each do |island|
  island.connections = island.connections.sort.uniq
end

def dfs_function(from, to)
  island = $islands[from -1]
  if island.connections.include?(to)
    return true
  end

  # if island.connections.all?{|islan| islan.checked }
  #   return false
  # end

  island.checked = true
  island.connections.map {|i| $islands[i - 1]}.select{|islan| !islan.checked }.each do |isl|
    dfs_function(isl.id, to)
  end
  false
end


$connections.reverse.each do |bridge|
  count = 0
  $islands[bridge.first - 1].remove(bridge.last)
  $islands[bridge.last - 1].remove(bridge.first)
  (1..N).to_a.combination(2) do |combi|
    if dfs_function(combi.first, combi.last)
      count += 1
    end
  end
  puts count
end