ary = gets.chomp.split("").map(&:to_i)
ans = 10000 
(0..(ary.length-3)).each do |n|
    tem= "#{ary[n]}#{ary[n+1]}#{ary[n+2]}"
    temabs = (tem.to_i - 753).abs 
      if ans > temabs
          ans = temabs
      end
end
p ans