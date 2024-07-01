
#N=gets.to_i
#S=gets.chomp
#A=(0...N).map{gets.to_i}
#sum=A.inject(&:+)
#B=gets.split.map(&:to_i)

S=gets.chomp

if S !~ /\d+/
  puts "NA"
end

A,B=S[0..1],S[2..3]

aflag= 1<=A.to_i && A.to_i<=12
bflag= 1<=B.to_i && B.to_i<=12

if aflag && bflag
  puts "AMBIGUOUS"
elsif aflag
  puts "MMYY"
elsif bflag
  puts "YYMM"
else
  puts "NA"
end