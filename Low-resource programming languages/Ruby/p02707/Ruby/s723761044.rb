n = gets.to_i
a = gets.split.map(&:to_i)

syain = [*1..n]
ary = []
n = 1
syain.each do |buka|
  if a.include?( buka )
    ary.push(a.count(buka))
  else
    ary.push(0)
  end
end

puts ary