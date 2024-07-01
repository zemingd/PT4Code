Base = gets.chomp

table = ["A","C","G","T"]

answers = []

Base.length.times do |i|
  tmp = ""
  (Base.length - i).times do |j|
    flag = false
    table.each do |b|
      if Base[i+j] == b
        tmp = tmp + Base[i+j]
        #p tmp
        flag = true
      end
    end
    answers.push(tmp)
    if flag == false
      break
    end
  end
end

ans = ""
answers.each do |v|
  if v.length > ans.length
    ans = v
  end
end

puts ans.length