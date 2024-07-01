package main

import "fmt"

func main(){
	var a int
	fmt.Scan(&a)
	if a < 3200 {
		fmt.Println("red")
	} else {
		var s string
		fmt.Scan(&s)
		fmt.Println(s)
	}
}