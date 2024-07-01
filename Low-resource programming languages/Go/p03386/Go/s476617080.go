package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var A, B, K int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d %d %d", &A, &B, &K)

	for i := A; i <= B; i++ {
		if i < A+K || i > B-K {
			fmt.Println(i)
		}
	}

}
