N=gets.to_i
p=gets.split.map(&:to_i)

minel=Float::INFINITY
count=0

N.times do |i|
  if p[i] < minel
    minel=p[i]
    count+=1
  end
end

puts count