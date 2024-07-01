N = gets.to_i
a = gets.split.map(&:to_i)

b = []
(N-1).downto(0) do |i|
  if a[i] == 1
    c = b.find_all {|n| n % (i+1) == 0 }
    case c.size
    when 0
      b << i + 1
    when 1
      next
    else
      puts -1
      exit
    end
  end
end

puts b.size
puts b.join(' ') if b.size > 0