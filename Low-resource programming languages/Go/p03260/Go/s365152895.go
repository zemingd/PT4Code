package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	var A, B int
	fmt.Sscanf(scanner.Text(), "%d", &A, &B)

	if A%2 == 1 && B%2 == 1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
