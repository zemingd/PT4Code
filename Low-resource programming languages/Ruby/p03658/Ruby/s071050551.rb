_,k=gets.split.map &:to_i
p gets.split.map(&:to_i).sort.reverse[0,k].inject &:+