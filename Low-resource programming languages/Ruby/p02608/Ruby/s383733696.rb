N = gets.to_i

ans = Hash.new(0) # 0で初期化したhash

# 最大10^6回くらいしかまわらないので，間に合う
1.upto Math.sqrt(N).floor do |x|
  1.upto Math.sqrt(N).floor do |y|
    1.upto Math.sqrt(N).floor do |z|
      pol = x*x + y*y + z*z + x*y + y*z + z*x
      if pol > N
        break
      end
      ans[pol] += 1
    end
  end
end

N.times do |i|
  puts ans[i+1]
end