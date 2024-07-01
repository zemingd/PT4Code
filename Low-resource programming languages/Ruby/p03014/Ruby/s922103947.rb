$h,$w=gets.split.map &:to_i
$a=[true]*($w+2)+readlines.flat_map{|e|[true]+e.chomp.chars.map{|c|c==?#}<<true}+[true]*($w+2)

x = 0

def pip()
  ($h+2).times{|y|($w+2).times{|x|print $a[y*($w+2)+x]? "#": "."};print("\n")}
end

def cnt_dir(q, d)
  return 0 if $a[q]
  cnt_dir(q+d, d)+1
end

($h*$w).times do |q|
  q+=($w+2)+1
  c=cnt_dir(q,-1)+cnt_dir(q,1)+cnt_dir(q,-($w+2))+cnt_dir(q,$w+2)-3
  x=c if x<c
end

p x
