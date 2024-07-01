package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var reader = bufio.NewReader(os.Stdin)
	var a, b, x int
	if _, err := fmt.Fscan(reader, &a, &b, &x); err != nil {
		panic(err)
	}
	if a%x == 0 {
		fmt.Println(b/x - (a/x - 1))
	} else {
		fmt.Println(b/x - a/x)
	}
}
