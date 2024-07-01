a = []
while true
  num = gets.split(" ").map(&:to_i)
  break if(num[0] == 0 && num[1] == 0)
  a.push(num)
end
a.each do |ver|
  h = ver[0]
  w = ver[1]
  h.times do
    w.downto(1) do |w|
      unless w == 1
        printf "#"
      else
        printf "#\n"
      end
    end
  end
  printf "\n"
end