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

	prev := a[0]
	for i := 1; i < n; i++ {
		if a[i]-prev > 0 {
			prev = a[i] - 1
		} else if a[i] == prev {
			continue
		} else {
			fmt.Println("No")
			return
		}
	}

	fmt.Println("Yes")
}
