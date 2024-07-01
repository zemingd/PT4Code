package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var A, B, X int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d %d %d", &A, &B, &X)

	if A <= X && X <= A+B {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
