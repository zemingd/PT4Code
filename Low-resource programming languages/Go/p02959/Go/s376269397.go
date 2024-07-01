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
	n, _ := strconv.Atoi(sc.Text())

	a := make([]int, n+1)
	for i := 0; i < n+1; i++ {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}

	b := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		b[i], _ = strconv.Atoi(sc.Text())
	}

	count := 0
	rest := 0

	if a[0] <= b[0] {
		count += a[0]
		rest = b[0] - a[0]
	} else {
		count += b[0]
	}

	for i := 1; i < n; i++ {
		if a[i] <= b[i]+rest {
			if a[i]-rest > 0 {
				rest = b[i] - a[i] + rest
			} else {
				rest = b[i]
			}
			count += a[i]
		} else {
			count += b[i] + rest
			rest = 0
		}
	}

	if a[n] < rest {
		count += a[n]
	} else {
		count += rest
	}

	fmt.Println(count)
}
