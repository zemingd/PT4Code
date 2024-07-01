N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

def solve
  A.each do |a|
    if a % 2 == 1
      next
    end
    # Here, a is even
    if (a % 3 != 0 && a % 5 != 0) 
      return false      
    end
  end
  return true
end
      
if solve
  print "APPROVED\n"
else
  print "DENIED\n"
end