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

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}

	mod := 1000000007
	sum := 0
	for i := 0; i < n;i++ {
		for j :=i+1;j < n;j++ {
			sum += a[i] * a[j]
			sum %= mod
		}
	}
	fmt.Println(sum)
}

