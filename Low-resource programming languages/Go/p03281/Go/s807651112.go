package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var N int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d", &N)

	ans := 0
	for i := 105; i <= N; i = i + 2 {
		if numOfDivisor(i) == 8 {
			ans++
		}
	}
	fmt.Println(ans)
}

func numOfDivisor(n int) int {
	facts := make(map[int]int)
	factoring(n, facts)

	ret := 1
	for _, count := range facts {
		ret = ret * (count + 1)
	}
	return ret
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
