S = gets.chomp
T = gets.chomp

pos = Hash.new {|h,k| h[k] = [] }
S.each_char.with_index(1) {|c,i| pos[c] << i }

i = 0
l = 0
T.each_char do |c|
  a = pos[c]
  if a.empty?
    puts -1
    exit
  end
  i = pos[c].bsearch {|j| i < j }
  if i == nil
    i = 0
    l += 1
    redo
  end
end
puts i + S.size * l
