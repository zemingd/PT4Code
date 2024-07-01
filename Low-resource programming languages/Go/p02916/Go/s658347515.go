package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
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
	sc.Split(bufio.ScanWords)

	n := nextInt()
	a, b, c := make([]int, n), make([]int, n), make([]int, n-1)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}
	for i := 0; i < n; i++ {
		b[i] = nextInt()
	}
	for i := 0; i < n-1; i++ {
		c[i] = nextInt()
	}

	sum := 0
	for i := 0; i < n; i++ {
		sum += b[a[i]-1]
		if i != 0 && a[i-1]+1 == a[i] {
			sum += c[a[i-1]-1]
		}
	}
	fmt.Println(sum)
}