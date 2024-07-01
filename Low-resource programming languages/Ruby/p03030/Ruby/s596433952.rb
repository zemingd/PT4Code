class Restrant
   attr_accessor :num, :name, :score
end

n = gets.to_i
rests = []

for i in 0..n-1 do
  rest = Restrant.new
  m = gets.chomp.split(" ")
  rest.num = (i+1).to_s
  rest.name = m[0].to_s
  rest.score = m[1].to_i
  rests.push(rest)
end

rests.sort! do |a, b|
  (a.name <=> b.name).nonzero? ||
    (b.score <=> a.score)
end
nums = rests.map { |b| b.num.to_i }

nums.each do |i|
  puts i
end