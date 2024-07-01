n = gets.to_i
(1..n).map {|i|
    s, p = gets.split
    {'number' => i, 'city' => s, 'score' => p.to_i}
}.sort_by {|r|
    [r['city'], -r['score']]
}.each {|r|
    puts "#{r['number']}"
}
