N,K=gets.split.map(&:to_i)
v = gets.split.map(&:to_i)
T=[N,K].min
ans = 0
(T+1).times do |a|
  (T+1).times do |b|
    if a+b <= T
      have = v[0,a] + v.reverse[0,b]
      kesu = have.sort[0,T - (a+b)].inject(0){|sum,val| sum + (val > 0 ? 0 : val)} if T-a-b > 0
      ans = [ans, have.inject(&:+).to_i - kesu].max
    end
  end
end

puts ans

