package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var A, B int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d %d", &A, &B)

	if B%A == 0 {
		fmt.Println(A + B)
	} else {
		fmt.Println(B - A)
	}
}
