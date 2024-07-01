io = STDIN
a,b,c=io.gets.chomp.split.map(&:to_i)
def han(a,b,c)
  (1..(b-1)).each do |bb|
    return 'YES' if a*bb%b ==c
  end
  'NO'
end
puts han(a,b,c)