k=gets[/\d+$/].to_i
p *[[0],*$<].reduce{|a,b|a.product(b.split).map{|x,y|x+y.to_i}.max k}