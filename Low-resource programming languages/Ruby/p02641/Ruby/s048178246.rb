x, n = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split(" ").map(&:to_i)
arr = [*1..100]
arr = arr.map(&:to_i)
s.each do |i|
    arr.delete(i)
end
ar = []
abs = 1000
arr.each do |i|
    if (i - x).abs < abs
        ar << i
    end
    abs = [(i - x).abs,abs].min
end
puts ar.pop