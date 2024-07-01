N,M = gets.chomp.split(" ").map(&:to_i)
like_food_hash = {}
N.times do |i|
    like_food =  gets.chomp.split(" ").map(&:to_i)
    like_food.delete_at(0)
    if i == 0
        like_food.each do |food|
            like_food_hash[food] = true
        end
    else
        like_food_hash.each do |k,v|
            if !like_food.include?(k) 
                like_food_hash[k] = false
            end
        end
    end
end
sum = 0
like_food_hash.each do |k,v|
    if v 
        sum += 1
    end
end
puts sum
