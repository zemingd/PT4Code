A,B,C,D,e,F=gets.split.map(&:to_i)
at,as,tmp=0,0,0
e=e/(100+e).to_f
(F.div(A)+1).times{|i|
  t=i*A*100
  0.step{|j|
    tt=j*B*100
    break if t+tt>F || t+tt==0
    0.step{|k|
      s=k*C
      break if t+tt+s>F
      0.step{|l|
        ss=l*D
        break if t+tt+s+ss>F
        if t+tt+s+ss!=0 then
          r=(s+ss)/(t+tt+s+ss).to_f
          tmp,at,as=r,t+tt+s+ss,s+ss if r>tmp && r<=e
        end
      }
    }
  }
}
puts "#{at} #{as}"
