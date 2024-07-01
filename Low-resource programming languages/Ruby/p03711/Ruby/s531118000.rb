x,y=gets.split.map &:to_i
A=[4,6,9,11],B=[1,3,5,7,8,10,12]
puts (x!=2&&y!=2)&&(A.include?(x)&&A.include?(y)||B.include?(x)&&B.include?(y)) ? :Yes: :No