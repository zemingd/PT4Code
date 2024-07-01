package main

import "fmt"

func main(){
	var n int
	fmt.Scan(&n)
	if n < 30 {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}
