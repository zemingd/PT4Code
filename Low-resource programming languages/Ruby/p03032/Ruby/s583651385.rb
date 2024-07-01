N,K=gets.split.map(&:to_i)
v = gets.split.map(&:to_i)
T=[N,K].min
ans = 0
(T+1).times do |a|
  (T+1).times do |b|
    if a+b <= T
      have = v[0,a] + v.reverse[0,b]
      kesu = have.select{|val| val < 0}.sort[0, [T-a-b,0].max].inject(&:+)
      ans = [ans, have.inject(&:+).to_i - kesu.to_i].max
    end
  end
end

puts ans

