package main

import(
	"fmt"
)

func main() {
	var r,g,b int
	fmt.Scan(&r,&g,&b)
	
	num := 100*r + 10*g + 1*b
	if num % 4 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}	
}