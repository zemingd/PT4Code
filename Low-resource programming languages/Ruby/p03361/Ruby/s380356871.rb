H, W = gets.split.map(&:to_i)
S = []
S[0] = Array.new(W+2,".")

H.times {
  newArray = Array.new(1, ".")
  S << newArray + gets.chomp.split("") + newArray
}
S << Array.new(W+2,".")

judge = "Yes"

H.times do |i|
  W.times do |j|
    if S[i+1][j+1] == "#" then
      #p [i+1, j+1]
      count = 0
      if S[i][j+1] == "#"
        count += 1
      end
      if S[i+1][j] == "#"
        count += 1
      end
      if S[i+1][j+2] == "#"
        count += 1
      end
      if S[i+2][j+1] == "#"
        count += 1
      end
      if count == 0
        judge = "No"
      break
      end
      #p [i, j]
      #p count
    end
  end
  if judge == "No"
    break
  end
end
  
p judge