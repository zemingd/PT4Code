package main

import "fmt"

func main(){
	var x,y int
	fmt.Scan(&x,&y)
	if y%2 == 0 {
		if x*2 <= y && y <= x*4 {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	} else {
		fmt.Println("No")
	}
}
