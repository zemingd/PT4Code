package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var AB, BC int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d %d", &AB, &BC)

	fmt.Println(AB * BC / 2)
}
