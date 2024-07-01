package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	var N int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d", &N)

	hs := make([]int, N)
	for i := 0; i < N; i++ {
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d", &hs[i])
	}
	ans := 0
	for h := 1; h < 101; h++ {
		isTarget := false
		for i := 0; i < N; i++ {
			if hs[i] >= h {
				if !isTarget {
					ans++
				}
				isTarget = true
			} else {
				isTarget = false
			}
		}
	}
	fmt.Println(ans)
}
