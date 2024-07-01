package main

import (
	"bufio"
	"fmt"
	"os"
)

var mod = 1000000007

func main() {
	r := bufio.NewReader(os.Stdin)
	var x, a int
	fmt.Fscan(r, &x)
	fmt.Fscan(r, &a)

	if x < a {
		fmt.Println(0)
	} else {
		fmt.Println(10)
	}
}