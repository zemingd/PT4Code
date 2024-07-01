package main

import (
	"fmt"
	"strconv"
)


func main() {
	var s string
	fmt.Scan(&s)
	ans:=true
	for i:=0;i<len(s)-1;i++{
		a,_ := strconv.Atoi(string(s[i]))
		b,_ := strconv.Atoi(string(s[i+1]))
		if a== b{
			ans =false
			break
		}
	}
	if ans{
		fmt.Println("Good")
	} else{
		fmt.Println("Bad")
	}
}