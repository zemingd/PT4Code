N,K=gets.split.map(&:to_i)
v = gets.split.map(&:to_i)
ans = 0
([N,K].min+10).times do |a|
  ([N,K].min+10).times do |b|
    if a+b <= [N,K].min
      have = v[0, a] + v.reverse[0, b]
      kesu = have.sort[0, ([N,K].min - (a+b))].inject(0){|sum,val| sum + (val > 0 ? 0 : val)}
      ans = [ans, have.inject(&:+).to_i - kesu].max
    end
  end
end

puts ans

