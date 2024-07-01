T  = Array.new(5)
T_ = Array.new(5)
S = 5.times.inject(0) do |s, i|
  t = gets.to_i
  T[i] = t
  T_[i] = t.ceil(-1)
  s + T_[i]
end
puts 5.times.map{|i| S - T_[i] + T[i] }.min

