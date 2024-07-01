N,D,*xs=$<.read.split.map(&:to_i)
xs=xs.each_slice(D).to_a

ret = 0
N.times do |i|
    (i+1).upto(N-1) do |j|
        x = xs[i].zip(xs[j]).inject(0) {|s,yz|s+=(yz[0]-yz[1])**2}
        x = Math.sqrt(x)
        ret += 1 if x - x.to_i == 0
    end
end

puts ret
