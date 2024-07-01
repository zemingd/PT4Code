package main

import (
	"bufio"
	"fmt"
	"os"
)

type Range struct {
	L, R int
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var N, M, Q int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d %d %d", &N, &M, &Q)

	mp := make(map[Range]int)
	for i := 0; i < M; i++ {
		var L, R int
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d %d", &L, &R)
		mp[Range{L, R}]++
	}

	for Q > 0 {
		var p, q int
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d %d", &p, &q)
		ans := 0
		for i := p; i <= q; i++ {
			for j := i; j <= q; j++ {
				ans = ans + mp[Range{i, j}]
			}
		}
		fmt.Println(ans)
		Q--
	}

}
