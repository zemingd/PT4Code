package main

import "fmt"

func main() {
	var n string
	fmt.Scan(&n)
	if n == "ABC"{
		fmt.Println("ARC")
	}else if n == "ARC"{
		fmt.Println("ABC")
	}else{
		fmt.Println("Error")
	}
}