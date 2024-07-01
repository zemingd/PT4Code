n, m=gets.split.map(&:to_i)

dig=Array.new(n){0}
m.times do
  a, b=gets.split.map(&:to_i)
  dig[a-1]+=1
  dig[b-1]+=1
end

dig.each do |e|
  puts e
end
