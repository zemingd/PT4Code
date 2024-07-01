N,K=gets.split.map(&:to_i)
v = gets.split.map(&:to_i)
ans = 0
[N,K].min.times do |a|
  [N,K].min.times do |b|
    have = []
    kesu = 0
    if a+b <= [N,K].min
      have = v[0...a] + v.reverse[0...b]
      if (rest = [N,K].min - (a+b)) > 0
        kesu = have.sort[0...rest].inject(0){|sum,val| sum + (val > 0 ? 0 : val)}
      end
      ans = [ans, have.inject(&:+).to_i - kesu].max
    end
  end
end

puts ans

