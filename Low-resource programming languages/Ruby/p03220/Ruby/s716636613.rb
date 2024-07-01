N = gets.to_i
t,a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
near_k=10**9
near_i=10**9
h.each_with_index do |x,i|
    k=t-x*0.006
    diff = (a-k).abs
    if diff < near_k
        near_k = diff
        near_i = i
    end
end
puts near_i+1