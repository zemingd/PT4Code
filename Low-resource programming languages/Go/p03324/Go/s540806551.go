package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var D, N int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d %d", &D, &N)

	ans := N
	for i := 0; i < D; i++ {
		ans = ans * 100
	}
	fmt.Println(ans)
}
	