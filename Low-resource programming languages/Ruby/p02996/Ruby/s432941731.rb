n = gets.to_i
abs = []
n.times do
  abs << gets.split.map(&:to_i)
end
abs.sort_by! { |a, b| b }

ans = 'Yes'
cur = 0
abs.each do |a, b|
  if b >= cur + a
    cur = cur + a
  else
    ans = 'No'
    break
  end
end
puts ans