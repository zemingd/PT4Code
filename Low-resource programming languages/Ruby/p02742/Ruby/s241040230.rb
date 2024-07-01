H,W = gets.split.map &:to_i
p [H,W].min>1 ? (H*W+1)/2 : 1