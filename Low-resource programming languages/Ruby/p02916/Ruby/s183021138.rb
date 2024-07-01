def lscan; gets.split.map(&:to_i); end

n = gets.to_i

aa = lscan
bb = lscan
cc = lscan

total = bb[aa[0]-1]
aa.each_cons(2) do |i,j|
    i -= 1
    j -= 1
    total += bb[j]
    total += cc[i] if i+1 == j
end


p total