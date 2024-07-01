N = gets.to_i

ans = Hash.new(0)
N.times do 
    ans[gets.chomp] += 1
end

["AC","WA","TLE","RE"].each do |s|
    puts s + " x " + ans[s].to_s
end