n=gets.to_i
a=gets.split.map &:to_i
bad=0
ma=Marshal.load(Marshal.dump(a))
a.each_with_index do |v,idx|
  bflg=false
  ma.delete_at(0)
  ma.each do |v2|
    if  v%v2 == 0 || v2%v == 0
      if v%v2 == 0 
        bad+=1 
      end
      if v2%v == 0
        bad+=1
      end
      bflg=true
    elsif v == v2
      bad+=1
      bflg=true
    end      
    break if bflg
  end
end
ans=(n-bad)
puts ans < 0 ? 0 : ans
