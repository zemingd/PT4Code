x, y, z, k = gets.chop.split.map(&:to_i)
as = gets.chop.split.map(&:to_i).sort! { |x, y| y <=> x }
bs = gets.chop.split.map(&:to_i).sort! { |x, y| y <=> x }
cs = gets.chop.split.map(&:to_i).sort! { |x, y| y <=> x }

abc = []

x.times do |i|
    y.times do |j|
        break if((i+1) * (j+1) > k)
        z.times do |l|
            break if((i+1) * (j+1) * (l+1) > k)
            abc << as[i] + bs[j] + cs[l]
        end
    end
end

abc.sort! { |x, y| y <=> x }
k.times do |i|
  puts abc[i]
end
