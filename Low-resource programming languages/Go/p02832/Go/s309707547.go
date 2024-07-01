package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	n := nextInt()
	a := make([]int, n)
	for i := 0; i<n; i++ {
		a[i] = nextInt()
	}

	idx := 0
	count := 0
	for {
		if idx > len(a) - 1 {
			break
		}

		if a[idx] != idx + 1 {
			count++
			a = append(a[:idx], a[idx+1:]...)
		} else {
			idx++
		}
	}

	if len(a) == 0 || count > n-1 {
		fmt.Printf("%d", -1)
	} else {
		fmt.Printf("%d", count)
	}
}
