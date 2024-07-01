N=gets.to_i

Hs=gets.split.map(&:to_i)

max_height=-1
count=0
Hs.each do |h|
    if max_height==h
        count+=1
    elsif max_height<h
        count+=1
        max_height=h
    end
end
puts count