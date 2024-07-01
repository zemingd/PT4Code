def circularSentence?(string)
  firstSentence = string[0...string.size/2]
  secondSentence = string[string.size/2...string.size].reverse
  if string.size.odd?
    secondSentence = string[string.size/2+1...string.size].reverse
  end
  return firstSentence  == secondSentence ? true : false
end
s=gets.chomp
n=s.size 
puts circularSentence?(s[0...(n-1)/2]) && circularSentence?(s[(n+3)/2-1...n]) ? :Yes : :No

