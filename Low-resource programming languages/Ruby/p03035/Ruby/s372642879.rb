
#N=gets.to_i
#S=gets.chomp
#A=(0...N).map{gets.to_i}
#sum=A.inject(&:+)
#B=gets.split.map(&:to_i)


A,B=gets.split.map(&:to_i)

if A>=13
  puts B
elsif A>=6
  puts B/2
else
  puts 0
end