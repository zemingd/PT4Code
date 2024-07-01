package main

import (
	"fmt"
)

func main() {
	var a string
	fmt.Scan(&a)
	d := a[0:4] + a[5:7] + a[8:10]
	if d <= "20190430" {
		fmt.Println("Heisei")
		return
	}
	fmt.Println("TBD")
}
