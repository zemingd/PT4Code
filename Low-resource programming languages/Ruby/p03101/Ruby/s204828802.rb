/n,a,b=gets.split.map(&:to_i)/
/.sort/
/S = gets.chomp.chars/
H,W=gets.split.map(&:to_i)
h,w=gets.split.map(&:to_i)
puts (H-h)*(W-w)