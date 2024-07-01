package main

import (
	"fmt"
)

func main() {
	var a int
	fmt.Scan(&a)
	res := 1000 - (a % 1000)
	if res == 1000{
		res = 0
	}
	fmt.Println(res)
}
