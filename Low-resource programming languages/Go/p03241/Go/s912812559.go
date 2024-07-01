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

	ans := -1
	for i := 1; i <= (M / N); i++ {
		if M%i == 0 {
			ans = i
		}
	}
	fmt.Println(ans)
}
