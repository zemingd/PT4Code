package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var a int
	scanner.Scan()
	fmt.Sscan(scanner.Text(), &a)

	for i := 0; ; i++ {
		a -= 1000
		if a <= 0 {
			break
		}
	}
	fmt.Println(-a)
}
