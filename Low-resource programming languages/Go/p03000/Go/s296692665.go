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

	ans := 0
	d := 0
	for i := 1; i < n+1; i++{
		d = d + l[i-1]
		if x < d {
			ans = i
			break


		}

	}
	fmt.Println(ans)
}

