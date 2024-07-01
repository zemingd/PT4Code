K = gets.chomp.to_i
A, B = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

def main
A.upto(B).each do |i|
  if (i%K == 0)
    print "OK\n"
    return;
  end
end

print "NG\n"
end

main


