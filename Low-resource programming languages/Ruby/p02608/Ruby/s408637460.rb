h=[*1..100].repeated_permutation(3).map{|x,y,z|z*z-x*y+(z+x+=y)*x}.tally
1.upto(eval`dd`){p h[_1]||0}