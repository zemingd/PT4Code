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

	as := make([]int, N+2)
	as[0] = 0
	as[N+1] = 0
	for i := 1; i <= N; i++ {
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d", &as[i])
	}

	sum := 0
	for i := 0; i < len(as)-1; i++ {
		sum = sum + abs(as[i+1]-as[i])
	}

	ds := make([]int, N)
	for i := 0; i < len(as)-2; i++ {
		if as[i] < as[i+1] && as[i] > as[i+2] ||
			as[i] > as[i+1] && as[i] < as[i+2] {
			ds[i] = 2 * abs(as[i]-as[i+1])
		} else if as[i] < as[i+2] && as[i+2] < as[i+1] ||
			as[i] > as[i+2] && as[i+2] > as[i+1] {
			ds[i] = 2 * abs(as[i+1]-as[i+2])
		} else {
			ds[i] = 0
		}
	}

	for _, d := range ds {
		fmt.Println(sum - d)
	}
}

func abs(n int) int {
	if n >= 0 {
		return n
	}
	return -n
}
