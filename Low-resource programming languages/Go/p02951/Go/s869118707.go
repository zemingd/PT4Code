package main

import (
	"fmt"
	"os"
)

func main() {
	var a, b, c int
	fmt.Fscanf(os.Stdin, "%d %d %d", &a, &b, &c)
	
	ret := c - (a - b)
	if ret < 0 {
		ret = 0
	}
	fmt.Println(ret)
}
