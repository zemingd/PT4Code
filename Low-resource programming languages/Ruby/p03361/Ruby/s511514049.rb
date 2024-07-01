h, w = gets.chomp.split(' ').map(&:to_i)

c = Array.new( w, nil )

# あとで判定を簡単にするため, ダミー枠を作成                                    
c[0] = ['.']*(w+2)
[*1..h].each{|i|
  ary = gets.chomp.split('').map(&:to_s)
  c[i] = ['.'] + ary + ['.']
}
c[h+1] = ['.']*(w+2)

#p c                                                                            


[*1..h].each{|i|
  [*1..h].each{|j|
    if c[i][j] == "#" then
      if (c[i-1][j] == ".") and (c[i+1][j] == ".") and (c[i][j-1] == ".") and (\
c[i][j+1] == ".") then
	puts "No"
	exit 0
      end
    end
  }
}

puts "Yes"