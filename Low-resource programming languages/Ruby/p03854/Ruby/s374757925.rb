s = gets.chomp.reverse
divide = ["dream", "dreamer", "erase", "eraser"]
divide.map!(&:reverse)

jadge = true
while jadge
  break if s.empty?
  jadge2 = false
  divide.each{|d|
    size = d.length
    if d == s[0..size-1]
      s.slice!(0,size)
      jadge2 = true
    end
  }
  jadge = false unless jadge2
end

puts jadge ? "YES" : "NO"