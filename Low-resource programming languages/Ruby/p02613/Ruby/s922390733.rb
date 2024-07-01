N = gets.chomp.to_i
sAry = []
N.times { sAry.push(gets.chomp) }

["AC", "WA", "TLE", "RE"].each do |r|
    puts r + " x " + sAry.count(r).to_s
end