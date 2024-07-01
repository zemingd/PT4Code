package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const mod = 1000000007

// 1MB
const ioBufferSize = 1 * 1024 * 1024

var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	sc.Split(bufio.ScanWords)
	return sc
}()

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
	n := nextInt()

	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	max, second := -1, -1
	for i := 0; i < n; i++ {
		if max == -1 || a[max] < a[i] {
			second = max
			max = i
		} else if second == -1 || a[second] < a[i] {
			second = i
		}
	}

	for i := 0; i < n; i++ {
		if i == max {
			fmt.Println(a[second])
		} else {
			fmt.Println(a[max])
		}
	}
}
