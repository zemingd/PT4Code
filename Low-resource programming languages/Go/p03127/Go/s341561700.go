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

	as := make([]int, N)
	for i := 0; i < N; i++ {
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d", &as[i])
	}

	ans := as[0]
	for _, a := range as {
		ans = gcd(ans, a)
	}
	fmt.Println(ans)
}

func gcd(a, b int) int {
	if a < b {
		a, b = b, a
	}
	for b != 0 {
		tmp := a % b
		a, b = b, tmp
	}
	return a
}
