#!/usr/bin/ruby
# -*- coding: utf-8 -*-
=begin
ITP1_7-D

Structured Program II - Matrix Multiplication
Time Limit : 1 sec, Memory Limit : 65536 KB
????????????

n??m
????????? A ??¨ m??l ????????? B ?????\??????????????????????????§?????? n??l ????????? C ???????????????????????°?????????????????????????????????????????? C ??????????´? cij

????¬?????????§??????????????????
cij=???k=1maikbkj

????????§???A
???B???C ??????????´???????????????? aij???bij???cij

??¨????????????
Input

???????????? n???m???l

????????????????????§?????????????????????

?¶?????????? n??m
????????? A ??¨ m??l ????????? B

????????????????????????
Output

n??l
????????? C ???????´? cij

?????????????????????????????????????????£?????????????´?????????????????????§????????£??????????????????
Constraints

    1???n,m,l???100

0???aij,bij???10000

Sample Input

3 2 3
1 2
0 3
4 5
1 2 1
0 3 2

Sample Output

1 8 5
0 9 6
4 23 14

=end
fh=STDIN
#fh=open("IPT1_7_D.txt")
f=fh.gets.chomp.split.map{|x| x.to_i}
n=f[0]
m=f[1]
l=f[2]
a = Array.new(n+1).map{ Array.new(m+1,0) }
b = Array.new(m+1).map{ Array.new(l+1,0) }
c = Array.new(n+1).map{ Array.new(l+1,0) }

(1..n).each {|i|
  f = fh.gets.chomp.split
  (1..m).each {|j| a[i][j] = f[j-1].to_i}
}

(1..m).each {|i|
  f = fh.gets.chomp.split
  (1..l).each {|j| b[i][j] = f[j-1].to_i}
}

(1..n).each {|i|
  (1..l).each {|j|
    (1..m).each {|k| c[i][j] += a[i][k] * b[k][j]}
    }
 }

(1..n).each {|i|
  s=""
  (1..l).each {|j|
    s = s + c[i][j].to_s + " " 
  }
  puts s.sub(/ *$/,"")
}