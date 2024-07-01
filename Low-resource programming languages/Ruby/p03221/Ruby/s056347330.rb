# https://abc113.contest.atcoder.jp/tasks/abc113_c

temp = gets.chomp.split(" ").map{|x| x.to_i}
prefecture_count = temp[0]
city_count = temp[1]
prefecture_city_array_database = Array.new().map{Array.new()}

#p prefecture_city_array_database

# 問題文の順番を保存
city_count.times do |i|
   prefecture_city_array_database[i] = gets.chomp.split(" ").map{|x| x.to_i}
   prefecture_city_array_database[i].push(i)
end

#p prefecture_city_array_database

prefecture_city_array_database.sort_by! {|x| [x[0],x[1]]}

#p prefecture_city_array_database

prefecture_number = 1
push_number = 1

# ソート時の順番を保存
city_count.times do |i|

    loop
        if prefecture_number != prefecture_city_array_database[i][0]
            push_number = 1
            prefecture_number += 1
        else
            break
        end
    end

    prefecture_city_array_database[i].push(push_number)
    push_number += 1
end


prefecture_city_array_database.sort_by! {|x| x[2]}

#p prefecture_city_array_database

city_count.times do |i|
    puts prefecture_city_array_database[i][0].to_s.rjust(6,"0") + prefecture_city_array_database[i][3].to_s.rjust(6,"0")
end