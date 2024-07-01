n=gets.to_i
_=gets.split.map(&:to_i)
if _.select{|i|i<0}.size.odd?
  _=_.map(&:abs).sort
  p _[1,n].inject(:+)-_[0]
else
  p _.map(&:abs).inject(:+)
end