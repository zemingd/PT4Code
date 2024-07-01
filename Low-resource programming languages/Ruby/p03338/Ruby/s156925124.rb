n=gets.to_i
s=gets.chomp.chars
max=0

(1..n-1).each do |i|
  x=s[0,i].sort.uniq
  y=s[i,n-i].sort.uniq
  max = (x&y).size if max < (x&y).size
end

puts max