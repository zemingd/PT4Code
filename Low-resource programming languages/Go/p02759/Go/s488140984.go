package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var a int
	fmt.Fscan(r, &a)

	x := a / 2
	y := a % 2
	fmt.Println(x + y)

}
