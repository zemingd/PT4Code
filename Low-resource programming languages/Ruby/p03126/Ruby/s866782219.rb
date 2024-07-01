people_count = gets.chomp.split()[0].to_i
favs_count = {}
people_count.times do |c|
  gets.chop.split()[1..-1].each do |fav|
      favs_count[fav] = (favs_count[fav]||0) + 1
  end
end

p favs_count.values.count(people_count)
