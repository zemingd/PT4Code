package main

import (
	"fmt"
)

func main() {
	var ab, bc, ca int
	fmt.Scan(&ab, &bc, &ca)
	fmt.Println(int(ab * bc / 2))
}
