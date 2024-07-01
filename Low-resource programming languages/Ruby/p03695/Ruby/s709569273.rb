N = gets.to_i
A = gets.split.map(&:to_i)

B = A.map{|a| [a/400, 8].min }.uniq

s = B.size

r = A.count{|a| [a/400, 8].min == 8 }

if s == 1
  if B[0] == 8
    puts "1 #{r}"
  else
    puts "1 1"
  end
else
  if B.max == 8
    puts "#{s-1} #{s-1+r}"
    # puts 3
  else 
    puts "#{s} #{s}"
    # puts 4
  end
end