h,w=STDIN.gets.split(" ").map(&:to_i)
cvs=[]
cvs << Array.new(w+2,".")
h.times do
  cvs << ['.']+STDIN.gets.chomp.split(//)+['.']
end
cvs << Array.new(w+2,".")
def check(cvs,hh,ww)
    (1..hh).each do |h|
      (1..ww).each do |w|
      if cvs[h][w]=="#"
        if [[1,0],[0,1],[-1,0],[0,-1]].any?{ |x,y| cvs[h+x][w+y]=="#"}
        else
          return false
        end
      end
    end
  end
  return true
end
if check(cvs,h,w)
  puts 'Yes'
else
  puts 'No'
end
