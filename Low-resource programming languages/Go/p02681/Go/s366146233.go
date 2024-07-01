package main

import (
	"fmt"
	"strings"
)

func main(){
	var S,T int
	fmt.Scan(&S,&T)
	var strs []string
	strs = strings.Split(T, "")
	strs = strs[:-1]
	new:=strings.Join(strs, "")
	if S==new{
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
	
}