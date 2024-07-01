package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	k, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	a := make([]int, n)

	for i := 0; i < n; i++ {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}

	max := 0
	for i := 1; i < n; i++ {
		if a[i]-a[i-1] > max {
			max = a[i] - a[i-1]
		}
	}

	l1 := a[n-1] - a[0]
	l2 := k - max
	if l1 > l2 {
		fmt.Println(l2)
	} else {
		fmt.Println(l1)
	}
}
