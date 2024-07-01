N,K=gets.split.map(&:to_i)
v = gets.split.map(&:to_i)
ans = 0
[N,K].min.times do |a|
  [N,K].min.times do |b|
    have = []
    if a+b <= [N,K].min
      kesu = []
      have = v[0...a] + v.reverse[0...b]
      if (rest = [N,K].min - (a+b)) > 0
        have.sort!
        while kesu.size < rest
          kesu << have.shift
        end
      end
      ans = [ans, have.inject(&:+).to_i].max
    end
  end
end

puts ans

