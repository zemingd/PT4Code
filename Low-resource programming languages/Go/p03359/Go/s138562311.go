package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var a, b int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d %d", &a, &b)

	ans := a
	if a > b {
		ans--
	}
	fmt.Println(ans)
}
