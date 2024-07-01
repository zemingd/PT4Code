n = gets.chomp.split(" ").map {|item| item.to_i }

stores = []
n[0].times do |index|
    name, point = gets.chomp.split(" ")
    store = [name, point.to_i, index]
    stores.push(store)
end

stores.sort!{|a, b|
    comp_result = a[0][0].casecmp(b[0][0])
    if comp_result == 0
        b[1] <=> a[1]
    else
        comp_result
    end
}
stores.each do |store|
    puts store[2] + 1
end