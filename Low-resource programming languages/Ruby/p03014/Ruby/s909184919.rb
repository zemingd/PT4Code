(h,w)=gets.split.map(&:to_i)
dat=ARGF.map {|s|s.chars.map{|c| c == "#" }}

h_dat=[[]]
(0...h).each{|i| h_dat[i]=[0]*w }

(0...h).each{|i|
    list =[-1]+ (0...w).map{|x|dat[i][x]}.each_with_index.select {|e,i| e}.map{|e,i|i} + [w]
    list.each_cons(2).each{|l,r|
        (l+1...r).each{|x|
            h_dat[i][x]= r- l -1
        }
    }
}

w_dat=[[]]
(0...h).each{|i| w_dat[i]=[0]*w }

(0...w).each{|i|
    list =[-1]+ (0...h).map{|x|dat[x][i]}.each_with_index.select {|e,i| e}.map{|e,i|i} + [h]
    list.each_cons(2).each{|l,r|
        (l+1...r).each{|x|
            w_dat[x][i]= r- l -1
        }
    }
}


x = (0...h).to_a.product((0...w).to_a).map {|i,k| h_dat[i][k] + w_dat[i][k] }.max

p x - 1