require 'set'
io = STDIN
N=io.gets.to_i
def add(ar)
  ar.each do |b|
    [3,5,7].each do |a|
      num = 10*b+a
      return ar if num > N
      ar << num
    end

  end
  add(ar)
end
p add([3,5,7]).select{|a|a.to_s.split(//).uniq.size==3}.size
