require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
n,a,b,c = gets.chomp.split.map(&:to_i)
l = []
n.times do
  l.push gets.chomp.to_i
end

ans = INF
size = l.size
1.upto(size-2).each do |i|
  l.combination(i) do |atakes|

    1.upto(size-1-i).each do |j|
      (l-atakes).combination(j) do |btakes|
        # p [atakes,btakes]

        1.upto(size-i-j).each do |k|
          (l-atakes-btakes).combination(k) do |ctakes|

            cost = (i-1 + j-1 + k-1) * 10
            cost += (atakes.inject(&:+) - a).abs
            cost += (btakes.inject(&:+) - b).abs
            cost += (ctakes.inject(&:+) - c).abs

            if ans > cost
              ans = cost
              # p [cost, atakes, btakes, ctakes]
            end
          end
        end
      end
    end

  end
end

puts ans