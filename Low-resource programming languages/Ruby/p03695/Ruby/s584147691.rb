
# は？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？


_ = gets.to_i # 素直にnにしたら./Main.rb:1: warning: assigned but unused variable - nって言われるんだけど、なぜか8つ中5つはACになる。意味不明
arr = gets.chomp.split.map(&:to_i)
# collection = Array.new(8, 0)
collection = Array.new(8, true)

over = 0
arr.each do |a|
  c = a/400
  if c >= 8
    over += 1
  else
    # if collection[c].zero?
    #   collection[c] = 1
    # end
    collection[c] = true
  end
end
# なんかいろいろ条件を忘れていたので仕方なく愚直に書いてやる
# if collection.inject(:+).zero?
if collection.select{|x| x}.size.zero?
  # puts "#{1} #{[8, over].min}"
  puts "#{1} #{over}"
else
  minimum = collection.select{|x| x}.size # collection.inject(:+)
  # maximum = [minimum+over, 8].min
  maximum = minimum+over
  puts "#{minimum} #{maximum}"
end