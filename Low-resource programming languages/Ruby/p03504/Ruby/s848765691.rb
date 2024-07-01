M=2*10**5+9
n,c=gets.split.map(&:to_i)
programs=Array.new(c){Array.new}
imos=Array.new(M,0)
n.times{
  s,t,k=gets.split.map(&:to_i)
  programs[k-1]<<[s,t]
}
programs.each{|seq|seq.sort_by!(&:first)}
merged_programs=Array.new(c){Array.new}

programs.each_with_index{|seq,idx|
  mp=merged_programs[idx]
  seq.each{|s,t|
    if mp.empty?
      mp << [s,t]
    elsif mp.last.last==s
      mp.last[1]=t
    else 
      mp << [s,t]
    end
  }
}
merged_programs.each{|seq|
  seq.each{|s,t|
    imos[2*s-1]+=1
    imos[2*t]-=1
  }
}
(M-1).times{|i|
  imos[i+1]+=imos[i]
}

puts imos.max