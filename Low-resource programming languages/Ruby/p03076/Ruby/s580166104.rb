@menus = []
while menu = gets do
    @menus << menu.to_i
end

min_amari_point = 0
min_amari_menu  = 9

@menus.each_with_index do |menu,i|
    if min_amari_menu >= menu%10
        min_amari_point = i
        min_amari_menu  = menu%10
    end
end

total = 0
last_menu = @menus[min_amari_point]
@menus.delete_at(min_amari_point)
@menus.each do |menu|
    total = menu + total + (10 - (menu%10))
end

puts total + last_menu