package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var x int
	fmt.Fscan(r, &x)

	fmt.Println(3 * x * x)
}