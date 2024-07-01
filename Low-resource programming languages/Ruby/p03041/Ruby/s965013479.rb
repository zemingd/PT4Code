
#N=gets.to_i
#S=gets.chomp
#A=(0...N).map{gets.to_i}
#sum=A.inject(&:+)
#B=gets.split.map(&:to_i)

N,A=gets.split.map(&:to_i)
s=gets.chomp

if s[A-1]=="A"
  s[A-1]="a"
elsif s[A-1]=="B"
  s[A-1]="b"
else
  s[A-1]="c"
end

puts s

