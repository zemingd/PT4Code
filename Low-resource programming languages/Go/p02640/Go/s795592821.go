package main

import "fmt"

func main() {
	var x,y  int
	fmt.Scan(&x,&y)

	for i:= 0; i < 100; i++ {
		if y == (2 * (x-i) + 4*i) {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")

}

