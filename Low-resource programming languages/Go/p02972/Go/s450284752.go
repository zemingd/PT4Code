package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n+1)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 1; i <= n; i++ {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}
	m := 0
	balls := make([]int, n+1)
	results := make([]int, 0)
	for i := n; i >= 1; i-- {
		cnt := 0
		for j := 2*i; j <= n; j += i {
			cnt += balls[j]
		}

		if cnt % 2 != a[i] {
			balls[i] = 1
			m += 1
			results = append(results, i)
		}
	}
	fmt.Println(m)

	if len(results) > 0 {
		fmt.Print(results[0])
		for i := 1; i < len(results); i++ {
			fmt.Print(" ")
			fmt.Print(i)
		}
		fmt.Println()
	}
}
