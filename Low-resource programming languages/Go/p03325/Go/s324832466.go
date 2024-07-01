package main

import (
	"fmt"
	"os"
	"bufio"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()

	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	count := 0
	for {
		maxidx := 0
		maxval := 0
		even_flag := false
		for i := 0; i < n; i++ {
			if a[i] & 1 == 0 {
				even_flag = true
				if maxval < a[i] {
					maxval = a[i]
					maxidx = i
				}
			}
			a[i] = a[i] * 3
		}

		if !even_flag {
			break
		}

		a[maxidx] = a[maxidx] / 6
		count++
	}

	fmt.Println(count)
}
