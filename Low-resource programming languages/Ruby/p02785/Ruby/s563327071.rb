n,k=gets.split(" ").map(&:to_i)
h=gets.split(' ').map(&:to_i)
h.sort!
(0..k).each do |x|
    if h.size==0 || k==0
        break;
    end
    h.delete_at(n-1)
    p h
    n-=1
    k-=1
end

p h.sum
