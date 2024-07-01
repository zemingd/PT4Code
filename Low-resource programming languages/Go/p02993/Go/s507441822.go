package main

import (
	"fmt"
	"strings"
)

type ll int64


func main() {

	var S string
	fmt.Scan(&S)
	ss := strings.Split(S, "") //[]stringに一文字ずつ格納

	isYes := true
	for i:=0;i<len(ss)-1 ; i++ {
		if ss[i+1] == ss[i] {
			isYes = false
		}
	}

	if isYes {
		fmt.Println("Good")
	}else {
		fmt.Println("Bad")
	}




}

