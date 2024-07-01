n=gets.split.map(&:to_i)
 
 
ta=n[0].div(n[3]).to_i
ao=n[2].div(n[2]).to_i
 
puts ta>ao ?"Yes":"No"