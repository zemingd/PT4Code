lines = readlines
a,b,c,x =  lines.map(&:chomp).map(&:to_i)

index = 0 

a.downto(0) {|an|
    b.downto(0){|bn|
    c.downto(0) {|cn|
    if x == 500*an + 100*bn + 50*cn
        index += 1
    end
}
}
}

p index