as=$<.read.split.map(&:to_i)

ret = 0
min = 10
as.each do |a|
    ret += ((a/10.0).ceil * 10).to_i
    t = a % 10
    min = t if t < min && t != 0
end

ret -= 10-min
puts ret
