a,b,c,d = gets.chomp.split("").map(&:to_i)
op = [[1,-1],["+","-"]]
2.times do |i|
  2.times do |j|
    2.times do |k|
      if a+b*op[0][i]+c*op[0][j]+d*op[0][k] == 7
        print a,op[1][i],b,op[1][j],c,op[1][k],d,"=7\n"
        exit
      end
    end
  end
end