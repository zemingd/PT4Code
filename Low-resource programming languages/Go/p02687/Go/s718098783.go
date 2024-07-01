package main

import (
	f "fmt"
)

func main(){
	var a string
	f.Scan(&a)

	if a == "ABC"{
		println("ARC")
	}else if a == "ARC"{
		println("ABC")
	}
}