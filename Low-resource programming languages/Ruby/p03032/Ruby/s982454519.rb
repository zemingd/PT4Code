N,K=gets.split.map(&:to_i)
v = gets.split.map(&:to_i)
T=[N,K].min
ans = 0
(T+1).times do |a|
  (T+1).times do |b|
    break if a+b > T
    have = v[0,a] + v.reverse[0,b]
    kesu = have.select{|val| val < 0}.min([T-(a+b), a+b].min).inject(&:+)
    ans = [ans, have.inject(&:+).to_i - kesu.to_i].max
  end
end

puts ans

