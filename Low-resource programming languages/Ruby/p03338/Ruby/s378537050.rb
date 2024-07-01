str = gets.chomp

max_count = (0..str.length).map {|num|
  ary_a = str.split("").take(num)
  ary_b = str.split("").drop(num)
  ary_a & ary_b
}.max_by {|ary| ary.length}.count


p max_count