n, m = gets.split.map(&:to_i)
abs = []

m.times do
  abs << gets.split.map(&:to_i)
end

abs.sort_by! { |a, b| b }
last_cut = 0
cnt = 0
abs.each do |a, b|
  if a > last_cut 
    cnt += 1
    last_cut = b - 1
  end
end

p cnt
