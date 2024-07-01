#coding:utf-8
NONE = -1
EOF = "END_OF_TEXT"
res = 0
keyword = gets.chomp
while NONE != ( ret = lambda {|s|
    if s == EOF
        return NONE
    end
    return s.downcase.split(" ").count keyword
}.call gets.chomp ) do res += ret end
p res