#coding:utf-8
def input
    res = ""
    while line = gets do
        res += line
    end
    return res.downcase
end

lambda {|s|
    ("a".."z").each { |c|
        printf "%s : %d\n", c, s.count(c)
    }
}.call input