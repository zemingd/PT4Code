# N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

def main
0.upto(4).each do |i|
  if A[i] == 0
    p (i+1)
    return
  end
end
end

main
