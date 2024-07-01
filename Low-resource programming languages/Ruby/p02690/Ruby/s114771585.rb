$x = gets.to_i
 
m = 200

def binsearch(b, left, right)
  while true
    cand = left + (right - left) / 2
    ans = b**5 + $x
    #puts "#{b} #{cand} l=#{left} r=#{right} #{ans}"
    if left >= right
      #puts "ret"
      return
    end
    if cand < ans
      left = cand + 1
    elsif cand > ans
      right = cand - 1
    else
      puts "#{cand} #{b}"
      exit
    end
  end
end

(-m).upto(m) { |b|
  #puts b
  binsearch(b, -m, m)
}
