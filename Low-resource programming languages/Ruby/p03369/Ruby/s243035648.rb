s=gets.chomp
res=700
s.each_char {|c|
if c=='o'
res+=100
end
}
puts res