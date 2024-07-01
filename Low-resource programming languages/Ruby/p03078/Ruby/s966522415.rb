x, y, z, k = gets.chop.split.map(&:to_i)
as = gets.chop.split.map(&:to_i)
bs = gets.chop.split.map(&:to_i)
cs = gets.chop.split.map(&:to_i)

sums = []
x.times do |i|
    y.times do |j|
        z.times do |l|
            sums << as[i] + bs[j] + cs[l]
        end
    end
end

sums.sort! {|x,y| y<=>x}

k.times do |i|
    puts sums[i]
end
