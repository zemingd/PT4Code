package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	var N, M int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d", &N)
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d", &M)

	mp := make(map[int]int)
	for i := 0; i < N; i++ {
		var K int
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d", &K)

		for j := 0; j < K; j++ {
			var n int
			scanner.Scan()
			fmt.Sscanf(scanner.Text(), "%d", &n)
			mp[n]++
		}
	}
	ans := 0
	for _, cnt := range mp {
		if cnt == N {
			ans++
		}
	}
	fmt.Println(ans)
}
