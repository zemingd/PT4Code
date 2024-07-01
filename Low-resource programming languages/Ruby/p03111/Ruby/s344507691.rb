N, A, B, C = gets.chomp.split(" ").map(&:to_i)
l = Array.new(N)
N.times do |i|
  l[i] = gets.chomp.to_i
end
l.sort!

# lをA,B,Cに分配する組み合わせを総当たり
min_cost = Float::INFINITY
1.upto(l.size-2) do |na|
  l.combination(na).each do |a|
    vala = a.inject(&:+)
    costa = 10 * (a.size - 1) + (A - vala).abs
    resta = l.dup
    a.each {|v| resta.delete_at(resta.index(v))}
    1.upto(resta.size-1) do |nb|
      resta.combination(nb).each do |b|
        valb = b.inject(&:+)
        costb = 10 * (b.size - 1) + (B - valb).abs
        restb = resta.dup
        b.each {|v| restb.delete_at(restb.index(v))}
        1.upto(restb.size) do |nc|
          restb.combination(nc).each do |c|
            valc = c.inject(&:+)
            costc = 10 * (c.size - 1) + (C - valc).abs
            cost = costa + costb + costc
            if cost < min_cost
              min_cost = cost
            end
          end
        end
      end
    end
  end
end
puts min_cost
