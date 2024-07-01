N,*as=$<.read.split.map(&:to_i)

arr = as.map.with_index {|a,i| [a,i] }.sort.map{|a,i|i+1}

puts arr.join(' ')
