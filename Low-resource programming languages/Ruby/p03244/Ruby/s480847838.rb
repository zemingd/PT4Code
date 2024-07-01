n=gets.to_i
v=gets.split.map &:to_i
kisu=[]
gusu=[]
v.each_with_index do |e,i|
    if i%2==0
        gusu << e
    else
        kisu << e
    end
end

def cnt(a)
    num=[]
    a.uniq.each do |e|
        num <<a.count(e)
    end
    return a.size-num.max
end

p v.uniq.size==1 ? n/2 : cnt(kisu)+cnt(gusu)