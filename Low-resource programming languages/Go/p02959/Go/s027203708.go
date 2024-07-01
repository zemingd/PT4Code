package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)

	sc := bufio.NewScanner(os.Stdin)

	sc.Scan()
	aT := sc.Text()
	aS := strings.Split(aT, " ")
	a := make([]int, n+1)
	for i := 0; i <= n; i++ {
		ai, _ := strconv.Atoi(aS[i])
		a[i] = ai
	}

	sc.Scan()
	bT := sc.Text()
	bS := strings.Split(bT, " ")
	b := make([]int, n)
	for i := 0; i < n; i++ {
		bi, _ := strconv.Atoi(bS[i])
		b[i] = bi
	}

	var sum, carryOver int
	for i := 0; i <= n; i++ {
		m := a[i]
		if carryOver >= m {
			sum += m
			m = 0
		} else {
			sum += carryOver
			m -= carryOver
		}

		if i == n {
			break
		}

		if b[i] >= m {
			sum += m
			carryOver = b[i] - m
		} else {
			sum += b[i]
			carryOver = 0
		}
	}

	fmt.Println(sum)
}
