package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n, sum, carryOver int
	fmt.Scan(&n)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	a := make([]int, n+1)
	for i := range a {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}

	b := make([]int, n)
	for i := range b {
		sc.Scan()
		b[i], _ = strconv.Atoi(sc.Text())
	}

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
