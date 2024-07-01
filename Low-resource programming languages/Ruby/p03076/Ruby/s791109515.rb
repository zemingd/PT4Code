menus = readlines.map(&:to_i)
temp = menus.map { |x| x % 10 == 0 ? 10 : x%10 }
last_index = temp.index(temp.min)
last_menu = menus.delete_at(last_index)
menus.map! { |x| x % 10 == 0 ? x : (x/10+1)*10 }
puts menus.inject(:+) + last_menu
