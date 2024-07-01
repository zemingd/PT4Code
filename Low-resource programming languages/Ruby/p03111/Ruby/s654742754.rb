n,a,b,c = gets.chomp.split(" ").map(&:to_i)
target = [a,b,c].sort
l = n.times.map{gets.to_i}
comb = []
n.times do |i|
  comb << i
end
ans = 100000
comb.combination(3).each do |x,y,z|
  [0,1].repeated_permutation(n-3).each do |bit|
    kouho = []
    j = 0
    (n-3).times do |i|
      while j == x || j == y || j == z
        j += 1
      end
      kouho << l[j] if bit[i] == 1
      j += 1
    end
    len = kouho.length
    [x,y,z].repeated_permutation(len).each do |k|
      take1 = l[x]
      take2 = l[y]
      take3 = l[z]
      mp = 0
      len.times do |l|
        if k[l] == x
          take1 += kouho[l]
        elsif k[l] == y
          take2 += kouho[l]
        elsif k[l] == z
          take3 += kouho[l]
        end
        mp += 10
      end
      list = [take1,take2,take3].sort
      mp += (target[0] - list[0]).abs
      mp += (target[1] - list[1]).abs
      mp += (target[2] - list[2]).abs
      ans = mp if ans > mp
    end
  end
end
puts ans