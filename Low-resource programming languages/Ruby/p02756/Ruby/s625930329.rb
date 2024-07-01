str = gets.split.map(&:to_s)
  q = gets.to_i

q.times { |i|
      t,a,b = gets.split.map(&:to_s)
      t = t.to_i
      a = a.to_i
      if t == 2 then
        if a == 2 then
           str.push(b)
        elsif a == 1 then
            str.unshift(b)
        end
      elsif t == 1  then
            str.reverse! 
      end
}

str.each{ |m| print(m) }
print("\n")