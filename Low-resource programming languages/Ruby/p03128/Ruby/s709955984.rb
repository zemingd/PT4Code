DBG = true
n,m = gets.split.map{|z| z.to_i}
a = gets.split.map{|z| z.to_i}

has4 = a.include?(4)
has5 = a.include?(5)||a.include?(3)||a.include?(2)
has6 = a.include?(6)||a.include?(9)
has7 = a.include?(7)
has8 = a.include?(8)
char5 = a.include?(5) ? "5" : a.include?(3) ? "3" : "2"
char6 = a.include?(9) ? "9" : "6"

if a.include?(1)
  if n%2 == 0
    (n/2).times { print "1" }
  elsif a.include?(7)
    print "7"
    (n/2-1).times { print "1" }
  elsif has5
    print char5
    (n/2-1).times { print "1" }
  else
    print "8"
    (n/2-3).times { print "1" }
  end

elsif a.include?(7)
  if n%3 == 0
    (n/3).times { print "7" }
  elsif n%3 == 1
    if a.include?(4)
      (n/3-1).times { print "7" }
      print "4"
    elsif a.include?(8)
      print "8"
      (n/3-2).times { print "7" }
    else
      (n/3-3).times { print "7" }
      2.times { print char5 }
    end
  else # n%3 == 2
    if has5
      (n/3-1).times { print "7" }
      print char5
    elsif a.include?(4)
      (n/3-2).times { print "7" }
      2.times { print "4" }
    else
      2.times { print "8" }
      (n/3-4).times { print "7" }
    end
  end

elsif a.include?(4)
  if n%4 == 0
    (n/4).times { print "4" }
  elsif n%4 == 1
    if has5
      (n/4-1).times { print "4" }
      print char5
    elsif has6 && has8
      if a.include?(9)
        print "9"
        print "8"
        (n/4-3).times { print "4" }
      else
        print "8"
        print "6"
        (n/4-3).times { print "4" }
      end
    elsif !has5 && !has6 && has8
      3.times { print "8" }
      (n/4-5).times { print "4" }
    end
  elsif n%4 == 2
    if has6
      print char6
      (n/4-1).times { print "4" }
    elsif a.include?(8)
      2.times { print "8" }
      (n/4-3).times { print "4" }
    else # has5
      if a.include?(5)
        2.times { print "5" }
        (n/4-2).times { print "4" }
      else
        (n/4-2).times { print "4" }
        2.times { print char5 }
      end
    end
  else # if n%4 == 3
    if has8
      print "8"
      (n/4-1).times { print "4" }
    elsif has6 && has5
      print char6
      print "5" if a.include?(5)
      (n/4-2).times { print "4" }
      print char5 if !a.include?(5)
    else # has5
      3.times { print "5" } if a.include?(5)
      (n/4-3).times { print "4" }
      3.times { print char5 } if !a.include?(5)
    end
  end

elsif has5
  if n%5 == 0
    (n/5).times { print char5 }
  elsif n%5 == 1
    if has6
      print char6
      (n/5-1).times { print char5 }
    else # !has6&&has8
      3.times { print "8" }
      (n/5-4).times { print char5 }
    end
  elsif n%5 == 2
    if has8
      print "8"
      (n/5-1).times { print char5 }
    else # has6&&!has8
      2.times { print char6 }
      (n/5-2).times { print char5 }
    end

  elsif n%5 == 3
    if has6 && has8
      print char6 if a.include?(9)
      print "8"
      print char6 if !a.include?(9)
      (n/5-2).times { print char5 }
    elsif has8
      4.times { print "8" }
      (n/5-5).times { print char5 }
    else # has6&&!has8
      3.times { print char6 }
      (n/5-3).times { print char5 }
    end

  else # n%5==4
    if has8
      2.times { print "8" }
      (n/5-2).times { print char5 }
    else # has6&&!has8
      4.times { print char6 }
      (n/5-4).times { print char5 }
    end

  end

elsif has6
  md = n%6
  if md == 0
    (n/6).times { print char6 }
  else
    (n/6-md).times { print char6 } if a.include?(9)
    md.times { print "8" }
    (n/6-md).times { print char6 } if !a.include?(9)
  end

else # has8
  (n/7).times { print "8" }

end

puts ""
