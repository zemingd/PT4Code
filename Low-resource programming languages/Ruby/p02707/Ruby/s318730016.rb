N = gets.to_i
A = gets.split.map(&:to_i)
#buka_count = ['0']
buka_count = Array.new(N+1,0)

A.each { |buka|
  buka_count[buka] += 1
}
buka_count.drop(1).each { |buka,idx| p buka>0 ? buka : 0 }

