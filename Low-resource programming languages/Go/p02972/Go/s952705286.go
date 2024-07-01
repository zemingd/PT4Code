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

	a := make([]int, n+1, n+1)
	for i := 1; i <= n; i++ {
		sc.Scan()
		tmp, _ := strconv.Atoi(sc.Text())
		a[i] = tmp
	}

	d := make([]int, n+1, n+1)
	for i := 1; i <= n; i++ {
		d[i] = 0
	}

	b := make([]int, 0, 0)

	for i := n; i >= 1; i-- {
		tmp := 0
		for j := i; j <= n; j += i {
			tmp ^= d[j]
		}
		d[i] = tmp ^ a[i]
		if d[i] == 1 {
			b = append(b, i)
		}
	}

	c := len(b)
	fmt.Println(c)
	for i := 0; i < c; i++ {
		if i == c-1 {
			fmt.Println(b[0])
		} else {
			fmt.Printf("%d ", b[c-1-i])
		}
	}
}
