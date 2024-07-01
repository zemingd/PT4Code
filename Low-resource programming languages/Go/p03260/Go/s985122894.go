package main

import (
	."fmt"
	."os"
)

func main() {
	var a,b int
	Scan(&a,&b)
	for i := 1; i<=3; ++i{
		if (a*b*i)%2 == 1{
			Println("Yes")
			Exit(0)
		}
	}
	Println("No")
}
