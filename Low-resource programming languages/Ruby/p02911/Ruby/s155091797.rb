n, k, q = gets.chomp.split(' ').map(&:to_i)
scores = Array.new(n, k)

for i in 1..q do 
    winner = gets.chomp.to_i
    scores.map!{|score| score -= 1}[winner - 1] += 1
    
end
scores.each do |score|
    print( score < 1 ? 'No' : 'Yes' )
    print("\n")
end