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

	ans := 0
	for _, a := range as {
		facts := make(map[int]int)
		factoring(a, facts)
		ans = ans + facts[2]
	}
	fmt.Println(ans)
}

func factoring(n int, facts map[int]int) {
	for i := 2; i*i <= n; i++ {
		for n%i == 0 {
			facts[i]++
			n = n / i
		}
	}
	if n != 1 {
		facts[n]++
	}
}
