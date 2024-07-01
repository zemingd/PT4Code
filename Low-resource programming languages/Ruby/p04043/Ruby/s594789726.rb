puts ({5 => 2, 7 => 1}) == gets.split(' ').map(&:to_i).group_by{|v| v}.inject({}){|h, v| h.merge({v.first => v.last.length})} ? 'YES' : 'NO'
