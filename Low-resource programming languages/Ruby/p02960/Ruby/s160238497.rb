ns = gets.chomp.split("")
ns.map!{|item|
    if item != "?" then
    item.to_i
  else
    item.to_s
  end
}
dp = Array.new(13, 0)
dp[0]=1
 
ns.each do |n|
  dpnext = Array.new(13, 0)
  dp.each_with_index {|b, num|
    if n == "?"
      10.times {|t|
        dpnext[ (num * 10 + t) % 13 ] += b
        dpnext[ (num * 10 + t) % 13 ] %= 1000000007
      }
    else
      dpnext[ (num * 10 + n) % 13 ] += b
      dpnext[ (num * 10 + n) % 13 ] %= 1000000007
    end
  }
  dp = dpnext
end
p dp[5]%1000000007