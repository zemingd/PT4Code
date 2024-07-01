a="";
gets.chop.chars{|c|
	a+="0"if c=='0';
	a+="1"if c=='1';
	a.chop!if c=='B'&&a.size>0;
}
puts a