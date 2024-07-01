A,B,C,D=gets.split('').map(&:to_i)
8.times{|i|
    op1=i[0]==1?"+":"-"
    op2=i[1]==1?"+":"-"
    op3=i[2]==1?"+":"-"
    s=("%s"*7) % [A,op1,B,op2,C,op3,D]
    a=eval(s)
    if a==7
        puts s+"=7"
        break
    end
}
