N,M=gets.split.map(&:to_i)

f=(1..M).to_a
N.times do
    k,*as=gets.split.map(&:to_i)
    f -= ((1..M).to_a - as)
end

puts f.count
