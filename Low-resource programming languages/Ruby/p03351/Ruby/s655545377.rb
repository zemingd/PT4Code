_=gets.split.map(&:to_i)
puts (_[0]-_[1]).abs<=_[3]&&(_[1]-_[2]).abs<=_[3]?'Yes':'No'