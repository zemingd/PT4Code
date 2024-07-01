N,K,*abs=$<.read.split.map(&:to_i)
n = 0
abs.each_slice(2).to_a.sort.each do |a,b|
    n += b
    if K <= n
        puts a
        exit 0
    end
end

