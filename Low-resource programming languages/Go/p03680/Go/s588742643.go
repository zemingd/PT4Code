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
	m := map[int]int{}

	for i := 0; i < n; i++ {
		m[i] = nextInt() - 1
	}

	res, current := 0, 0
	already := map[int]bool{}
	already[0] = true
	for {
		current = m[current]
		res++

		if already[current] {
			fmt.Println(-1)
			return
		}
		already[current] = true

		if current == 1 {
			break
		}
	}

	fmt.Println(res)
}
