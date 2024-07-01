#ABC170C.rb
x,n = gets.split.map(&:to_i)
ar = gets.split.map(&:to_i).sort

if n == 0
  puts x
  exit
end

tmp = (x - 0).abs
ans = 0

(1..101).each do |i|
  unless ar.include?(i)
    #puts "i:#{i} tmp:#{tmp} tmp_new:#{(x-i).abs}" 
    if tmp > (x-i).abs
      ans = i
      tmp = (x-i).abs
    elsif tmp == (x-i).abs
      if i < ans
        ans = i
      end
    end
  end
end
puts ans
