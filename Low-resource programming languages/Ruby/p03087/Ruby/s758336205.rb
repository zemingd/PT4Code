s,q = gets.split.map(&:to_i)
s = gets.chomp.chars
num = []
q.times do
  num << gets.split.map(&:to_i)
end

num.each do |i,j|
  counter = 0
  str = s[i-1..j-1]
  dec = true
  while dec
    str.size.times do |k|
      int = k
      if k == str.size - 1
        puts counter
        dec = false
      end
      if str[int] != "A"
        next
      else
        int += 1
        counter += 1 if str[int] == "C"
      end
    end
  end
end
