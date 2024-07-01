n, m = gets.split.map(&:to_i)
hi = gets.split.map(&:to_i)

su = Array.new(n, true)

$<.read.split.map(&:to_i).each_slice(2) do |a, b|
    #puts "#{a} #{b} #{hi[a-1]} #{hi[b-1]}"
    su[a-1] = false if hi[a-1] <= hi[b-1]
    su[b-1] = false if hi[b-1] <= hi[a-1]
    #p su
end

puts su.count(true)