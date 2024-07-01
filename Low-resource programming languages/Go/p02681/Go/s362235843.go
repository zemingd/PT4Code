package main

import (
	"fmt"
	"strings"
)

func main(){
	var S,T string
	fmt.Scan(&S,&T)
	var strs []string
	strs = strings.Split(T, "")
	strs = strs[:len(strs)-1]
	new:=strings.Join(strs, "")
	if S==new{
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
	
}