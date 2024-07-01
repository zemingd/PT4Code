c = gets.chomp.to_s

arr = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
puts arr[arr.find_index(c) + 1]
