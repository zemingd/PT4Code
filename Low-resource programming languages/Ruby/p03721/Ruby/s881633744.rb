N,K,*abs=$<.read.split.map(&:to_i)
arr=[]
abs.each_slice(2) do |a,b|
    arr += [a] * b
end
puts arr.sort[K-1]

