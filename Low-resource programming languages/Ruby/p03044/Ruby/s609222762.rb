N,*uvws=$<.read.split.map(&:to_i)

h = {}
uvws.each_slice(3) do |u,v,w|
    h[u] ||= []
    h[u] << [u,v,w%2]
    h[v] ||= []
    h[v] << [v,u,w%2]
end

arr = Array.new(N+1,-1)
arr[1] = 0

q = h[1]
until q.empty?
    u,v,w = q.shift
    next if arr[v] != -1
    if w == 0
        arr[v] = arr[u]
    else
        arr[v] = 1-arr[u]
    end
    h[v].each do |x|
        q << x
    end
end

puts arr[1..-1]