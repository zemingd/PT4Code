h,w=gets.split.map(&:to_i)
m,s=[[1,0],[0,1],[-1,0],[0,-1]],[]
ans=true
h.times{|i|s[i]=gets.chomp.split('')}
h.times{|i|
  w.times{|j|
    if s[i][j]=='#' then
      tmp=false
      m.size.times{|k|
        ii=i+m[k][0]
        jj=j+m[k][1]
        if 0<=ii && ii<h && 0<=jj && jj<w then
          tmp=true if s[ii][jj]=='#'
        end
      }
      ans=false if !tmp
    end
  }
}
puts ans ? 'Yes' : 'No'