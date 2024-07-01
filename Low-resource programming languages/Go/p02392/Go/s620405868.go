package main

import (
	"fmt"
)

func AizuITP12B() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	if a < b && b < c {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func main(){
AizuITP12B()
}
