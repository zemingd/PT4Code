package main

import(
	"fmt"
)

func isHard(s string)bool{
	for i:=0;i<len(s)-1;i++{
		if s[i]==s[i+1]{
			return true
		}
	}
	return false
}

func main(){
	var(
		s string
	)
	fmt.Scanln(&s)
	ans:=""
	if isHard(s){
		ans="Bad"
	} else{
		ans="Good"
	}
	fmt.Println(ans)
}