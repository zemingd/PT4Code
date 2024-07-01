_=gets.split.map &:to_i
a=_[1]-_[0]<2019?[*_[0].._[1]].combination(2):[*_[0].._[0]+2019].combination(2)
p a.to_a.map{|i|i.inject(:*)%2019}.min