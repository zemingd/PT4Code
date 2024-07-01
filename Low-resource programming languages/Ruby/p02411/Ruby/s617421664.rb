while true     #loop でも使える
m,f,r=gets.split(" ").map(&:to_i)
break if m==-1 && f==-1 && r==-1        #全て欠席[－１]の場合動かない

grade="F"           #グレード化にする
if m == -1 or f == -1   #m or f どっちか　－１の場合(||でもつかえる)

elsif m + f >=80            #値を選べる
    grade= "A"
elsif m + f >=65
    grade= "B"
elsif m + f>=50
    grade="C"
elsif m + f>=30
    if r > 50               #mとfが３０より大きい場合またｒが５０より大きければ
        grade= "C"          #Cにもどる
    else
        grade= "D"          #じゃなければ　D
    end
end

puts grade                  #最後で結果


end



