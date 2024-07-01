n, m = gets.split.map(&:to_i)
likes = n.times.map{|i|
    gets.split.drop(1).map(&:to_i)
}

puts (1..m).count{|it|
    likes.all?{|like| like.include?(it)}
}
