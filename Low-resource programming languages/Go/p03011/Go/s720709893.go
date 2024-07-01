package main

import (
	"fmt"
)

func main(){
	var s []int
	var a int

	for i:=0;i<3;i++{
		s = append(s,fmt.Scan(&a))
	}
	fmt.Println(s)
}