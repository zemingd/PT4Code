package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	var N, M int
	fmt.Sscanf(scanner.Text(), "%d %d", &N, &M)

	for i := (M / N); i >= 1; i-- {
		if M%i == 0 {
			fmt.Println(i)
			return
		}
	}
}
