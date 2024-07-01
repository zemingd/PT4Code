N = gets.chomp.to_i
A = gets.split(" ").map(&:to_i)

res = false
a = A.dup
N.times do |i|
  s = a.delete_at(i)

  if a.size > a.size - 1
    a.each_slice(a.size / (a.size - 1)) do |l|
      if l.include?(s)
        res = true
        break
      end
    end
  else
    res = true if a.include?(s)
  end

  a = A.dup
end

puts res ? "NO" : "YES"