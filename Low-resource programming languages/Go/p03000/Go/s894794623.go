package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n, x int
	fmt.Scan(&n, &x)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	l := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		l[i], _ = strconv.Atoi(sc.Text())
	}

	d := make([]int, n + 1)
	for i := 0 ; i < n; i++ {
		d[i+1] = d[i] + l[i]
	}
	ans := 0
	for i := 0; i < n; i++{
		if d[i] <= x {
			ans++
		}
	}
	fmt.Println(ans)
}

