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

def f(s)
  ss = s.size
  loop do
    tmp = s.gsub('01', '').gsub('10', '')
    break if tmp.size == s.size
    s = tmp
  end
  ss - s.size
end

s = gets.chomp
# puts naive(s.chars)
puts f(s)
__END__
8 12 2
