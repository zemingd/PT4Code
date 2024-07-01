def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

x,y,z,k = cin
cs = Array.new(3){cin.sort.reverse << -10**18}

dr = Array.new(k)
dr[0] = [0,0,0,cs.map{|x|x[0]}.inject(:+)]

require 'set'
st = Set.new
st.add([0,0,0])

(1..(k-1)).each do |i|
  dr[i] = [0,0,0,-10**18]
  (0..(i-1)).each do |ii|
    d = dr[ii]
    (0..2).each do |a|
      sl = [d[0],d[1],d[2]]
      sl[a] += 1
      #p cs, d, a
      oi = d[3] - (cs[a][d[a]] - cs[a][d[a]+1])
      if dr[i][3] < oi && !st.include?(sl) then
        dr[i][0] = sl[0]
        dr[i][1] = sl[1]
        dr[i][2] = sl[2]
        dr[i][3] = oi
      end
    end
  end
  st.add([dr[i][0],dr[i][1],dr[i][2]])
end

dr.each do |d|
  puts d[3]
end