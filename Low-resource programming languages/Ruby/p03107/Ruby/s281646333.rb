tower = gets.chomp.chars.map {|e| e == '0' ? :R : :B }
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

puts orig_size - tower.size

__END__
8 12 2
