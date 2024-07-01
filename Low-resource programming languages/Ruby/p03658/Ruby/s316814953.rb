N,K=gets.split.map &:to_i
p gets.split.map(&:to_i).sort[-K..-1].inject :+