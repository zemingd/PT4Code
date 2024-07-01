def naive(tower)
  orig_size = tower.size
  loop do
    new_tower = []
    tmp = nil
    tower.each do |c|
      if tmp.nil?
        tmp = c
        next
      end
      if tmp == c
        new_tower << tmp
        tmp = c
        next
      end
      tmp = nil
    end
    new_tower << tmp if tmp

    break if tower.size == new_tower.size
    tower = new_tower
  end

  orig_size - tower.size
end

def ff(s)
  g = s.chars.group_by(&:itself)
  a = g['0']&.size.to_i - g['1']&.size.to_i
  s.chars.size - a.abs
end

s = gets.chomp
# puts naive(s.chars)
puts ff(s)
__END__
8 12 2
