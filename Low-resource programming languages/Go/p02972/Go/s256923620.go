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

	for i := 1; i <= n; i++ {
		tmp := d[i] ^ a[i]
		for j := i; j <= n; j += i {
			d[j] ^= tmp
		}
	}

	b := make([]int, 0, 0)
	for i := 1; i <= n; i++ {
		if d[i] == 1 {
			b = append(b, i)
		}
	}

	c := len(b)
	fmt.Println(c)
	for i := 0; i < c; i++ {
		if i == c-1 {
			fmt.Println(b[i])
		} else {
			fmt.Printf("%d ", b[i])
		}
	}
}
