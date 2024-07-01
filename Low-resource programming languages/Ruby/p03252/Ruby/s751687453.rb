wo1 = gets.chomp.split("")
wo2 = gets.chomp.split("")
ans = Array.new(26, "+")
leng = wo1.length
count = 0

for i in 0..leng - 1
  if wo1[i] == "a"
    count = 0
  elsif wo1[i] == "b"
    count = 1
  elsif wo1[i] == "c"
    count = 2
  elsif wo1[i] == "d"
    count = 3
  elsif wo1[i] == "e"
    count = 4
  elsif wo1[i] == "f"
    count = 5
  elsif wo1[i] == "g"
    count = 6
  elsif wo1[i] == "h"
    count = 7
  elsif wo1[i] == "i"
    count = 8
  elsif wo1[i] == "j"
    count = 9
  elsif wo1[i] == "k"
    count = 10
  elsif wo1[i] == "l"
    count = 11
  elsif wo1[i] == "m"
    count = 12
  elsif wo1[i] == "n"
    count = 13
  elsif wo1[i] == "o"
    count = 14
  elsif wo1[i] == "p"
    count = 15
  elsif wo1[i] == "q"
    count = 16
  elsif wo1[i] == "r"
    count = 17
  elsif wo1[i] == "s"
    count = 18
  elsif wo1[i] == "t"
    count = 19
  elsif wo1[i] == "u"
    count = 20
  elsif wo1[i] == "v"
    count = 21
  elsif wo1[i] == "w"
    count = 22
  elsif wo1[i] == "x"
    count = 23
  elsif wo1[i] == "y"
    count = 24
  elsif wo1[i] == "z"
    count = 25
  end
  if ans[count] == "+"
    ans[count] = wo2[i]
  else
    if wo2[i] != ans[count]
      puts "No"
      exit
    end
  end
end

ans = Array.new(26, "+")

for i in 0..leng - 1
  if wo2[i] == "a"
    count = 0
  elsif wo2[i] == "b"
    count = 1
  elsif wo2[i] == "c"
    count = 2
  elsif wo2[i] == "d"
    count = 3
  elsif wo2[i] == "e"
    count = 4
  elsif wo2[i] == "f"
    count = 5
  elsif wo2[i] == "g"
    count = 6
  elsif wo2[i] == "h"
    count = 7
  elsif wo2[i] == "i"
    count = 8
  elsif wo2[i] == "j"
    count = 9
  elsif wo2[i] == "k"
    count = 10
  elsif wo2[i] == "l"
    count = 11
  elsif wo2[i] == "m"
    count = 12
  elsif wo2[i] == "n"
    count = 13
  elsif wo2[i] == "o"
    count = 14
  elsif wo2[i] == "p"
    count = 15
  elsif wo2[i] == "q"
    count = 16
  elsif wo2[i] == "r"
    count = 17
  elsif wo2[i] == "s"
    count = 18
  elsif wo2[i] == "t"
    count = 19
  elsif wo2[i] == "u"
    count = 20
  elsif wo2[i] == "v"
    count = 21
  elsif wo2[i] == "w"
    count = 22
  elsif wo2[i] == "x"
    count = 23
  elsif wo2[i] == "y"
    count = 24
  elsif wo2[i] == "z"
    count = 25
  end
  if ans[count] == "+"
    ans[count] = wo1[i]
  else
    if wo1[i] != ans[count]
      puts "No"
      exit
    end
  end
end


puts "Yes"
