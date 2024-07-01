N = $stdin.gets.to_i
A = $stdin.gets.split.map {|i| i.to_i }
$a_map = {}
A.each_with_index do |a, i|
  $a_map[a] ||= 0
  $a_map[a] += 1
end
Q = $stdin.gets.to_i
B = []
C = []
0.upto(Q - 1) do |i|
  b, c = $stdin.gets.split.map {|j| j.to_i }
  B[i] = b
  C[i] = c
end

def repl(i)
  b = B[i]
  c = C[i]
  b_count = $a_map.delete(b)
  if !b_count
    return
  end
  $a_map[c] ||= 0
  $a_map[c] += b_count
end

#puts $a_map.to_s
0.upto(Q - 1) do |i|
  repl(i)
  #puts $a_map.to_s
  sum = 0
  $a_map.each do |a, count|
    sum += a * count
  end
  puts sum
end
