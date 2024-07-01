a, b, c, d = gets.chomp.split(' ').map(&:to_i)
    
ans_c = (b/c - (a-1)/c)
ans_d = (b/d - (a-1)/d)
ans_cd = ( b / (c*d) - (a-1) / (c*d) )
ans = (b-a+1)-ans_c-ans_d+ans_cd
puts(ans)