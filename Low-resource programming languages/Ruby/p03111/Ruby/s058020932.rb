N, A, B, C = gets.split.map(&:to_i)
$needs = [0, A, B, C]
$mp = []
BAMBOOS = N.times.map { gets.to_i }
# p BAMBOOS

$count = 0

def calc_mp(array)
  # 0: 使わない、 1: Aに使う、2: Bに使う、3: Cに使う
  if (array.include?(1) && array.include?(2) && array.include?(3))
    # 1, 2, 3があるパターンでないと条件を満たせない
    # p array
    mp = 0
    (1..3).each do |num|
      temp = array.map.with_index { |x, i| x == num ? BAMBOOS[i] : nil }.compact
      mp += ($needs[num] - temp.inject(:+)).abs + 10*(temp.size-1)
    end
    $mp << mp
  end
end

def dfs(array)
  if array.size == N
    $count += 1
    # puts "#{array} パターンの完成、#{$count}通り目。"
    calc_mp(array)
  else # array.size < N
    dfs(array+[0])
    dfs(array+[1])
    dfs(array+[2])
    dfs(array+[3])
  end

  if array.size == 0
    $count
  end
end

dfs([])
puts $mp.min
