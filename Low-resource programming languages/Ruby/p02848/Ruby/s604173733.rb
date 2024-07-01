atoz=("A".."Z").to_a
n=gets.to_i
s=gets.chomp
s.chars do |ch|
  print atoz[(atoz.index(ch)+n)%26]
end
print "\n"
