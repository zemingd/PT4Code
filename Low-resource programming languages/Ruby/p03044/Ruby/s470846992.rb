N = gets.to_i
G = Array.new(N){ [] }
C = Array.new(N)

(N - 1).times do 
  u,v,w = gets.split.map(&:to_i)
  G[u - 1] << [v - 1, w % 2]
  G[v - 1] << [u - 1, w % 2]
end

C[0] = 0
q = [0]

until q.empty?
  u = q.shift
  d = C[u]
  
  G[u].each do |v,w|
    unless C[v]
      C[v] = d + w
      q << v
    end
  end
end

puts C.map{|d| d % 2 }

