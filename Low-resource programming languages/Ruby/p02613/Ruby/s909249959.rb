res = {
    AC: 0, WA: 0, TLE: 0, RE: 0
}
gets.chomp.to_i.times do |i|
    res[gets.chomp.to_sym] += 1
end

res.each do |k, v|
    puts k.to_s + " x #{v}" 
end