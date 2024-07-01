package main

import{
	"fmt"
}

func main()  {
	s:=[]string{}
	num:=0
	i:=0;
	count:=0
	size:=len(s)
	fmt.Scan(&s)
	for s[i] != '\0'{
		i++
		if(s[i] == size){
			size = s[i]
			count++
		}
	}
}