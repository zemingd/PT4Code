n, l = gets.split(' ').map(&:to_i)
puts (l...l+n).sum - (l ... l + n).min_by{|i| i.abs}