h,w=gets.split.map(&:to_i)
s=[]
h.times do |i|
  s << gets.chomp
end
h.times do |i|
  w.times do |j|
    if s[i][j]=="#"
      unless (i>0&&s[i-1][j]=="#")||(j>0&&s[i][j-1]=="#")||(i<h-1&&s[i+1][j]=="#")||(j<w-1&&s[i][j+1]=="#")
        puts "No"
        exit
      end
    end
  end
end
puts "Yes"
exit