n = gets.to_i
srray = gets.split("").map(&:to_s)
# answer.push(srray.count("."))
i=0
brray = []
crray = srray
subanswer = brray.count("#")+crray.count(".")
answer = subanswer
while i<n
  tmp = crray.shift
  if tmp == '#' then
    subanswer += 1
  elsif tmp == '.' then
    subanswer -= 1
    answer = [answer,subanswer].min
  end
  # j=0
  # while j<i+1
  #   brray.push(srray[j])
  #   j+=1
  # end
  # while j>i && j<n
  #   crray.push(srray[j])
  #   j+=1
  # end
  # answer.push(brray.count("#")+crray.count("."))
  i+=1
end
puts answer
