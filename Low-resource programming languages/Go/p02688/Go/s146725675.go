package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	scanner.Split(bufio.ScanWords)

	n, k := nextInt(), nextInt()
	d := make([]int, k)
	a := make([][]int, k)
	for i := 0; i < k; i++ {
		d[i] = nextInt()
		a[i] = make([]int, d[i])
		for j := 0; j < d[i]; j++ {
			a[i][j] = nextInt()
		}
	}

	m := make(map[int]bool)
	for i := range d {
		for _, v := range a[i] {
			m[v] = true
		}
	}
	fmt.Println(n - len(m))
}

func next() string {
	scanner.Scan()
	return scanner.Text()
}

func nextInt() int {
	i, err := strconv.Atoi(next())
	if err != nil {
		fmt.Println(err)
	}
	return i
}
