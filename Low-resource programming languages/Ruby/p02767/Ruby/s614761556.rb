number_of_people = gets.chomp!.to_i
wating_time = gets.chomp!.split(" ").map(&:to_i)
comparison_array = []

wating_time.max.times do |num|
    wasting_stamina = 0
    wating_time.each do |j|
        wasting_stamina += (j-(num+1))**2
    end
    comparison_array << wasting_stamina
end

p comparison_array.min