while s=gets
    a,b=s.split(' ').map(&:to_i)
    puts (a+b).to_s.size
    #puts s.split(' ')
end
