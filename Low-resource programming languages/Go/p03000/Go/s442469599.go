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

	d := 0
	ans := 1
	for i := 1; i < n; i++{
		d += l[i]

		if d <= x {
			ans++
		}
	}
	fmt.Println(ans)
}
