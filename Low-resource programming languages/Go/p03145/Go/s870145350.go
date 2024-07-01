package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var ab, bc, ca int
	fmt.Fscan(r, &ab, &bc, &ca)
	fmt.Println(ab * bc / 2)
}
