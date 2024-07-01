package main

import "fmt"

func main(){
	var a,b,c int
	fmt.Scan(&a,&b,&c)
	if a == b {
		if a == c {
			fmt.Println("No")
		} else {
			fmt.Println("Yes")
		}
	} else {
		if a == c {
			fmt.Println("Yes")
		} else if b == c {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	}
}
