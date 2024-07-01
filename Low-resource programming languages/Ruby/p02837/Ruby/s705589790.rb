n = gets.to_i

evidence = Array.new(n) {[]}

n.times do |i|
  a = gets.to_i
  a.times do
    x,y = gets.split.map(&:to_i)
    evidence[i].push [x,y]
  end
end

max = 0

(0..(2**n-1)).each do |i|
  binary = ("%0#{n}b" % i).chars

  ng = false
  binary.each.with_index do |b,i|
    next if b == '0'
    if evidence[i].any? { |x,y|
      binary[x-1] != y.to_s
    }
      ng = true
      break
    end
  end
  next if ng

  count = binary.count{|b| b == '1'}
  max = count if count > max
end

puts max