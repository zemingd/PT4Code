N=gets.to_i
manager=gets.chomp.split.map(&:to_i)

staff_count=Array.new(N,0)
check_manager=manager.uniq

check_manager.each{|var|
    staff_count[var-1]=manager.count(var)
}

puts staff_count