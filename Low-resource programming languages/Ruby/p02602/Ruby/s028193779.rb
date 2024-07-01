n,k,*as=$<.read.split.map &:to_i
(n-k).times{|i|
  puts as[i]<as[i+k] ? 'Yes' : 'No'
}