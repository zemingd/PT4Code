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
	a := make([]int, 5)

	for i := 0; i < 5; i++ {
		a[i] = nextInt()
	}

	last := 0
	for i := 1; i < 5; i++ {
		if a[i]%10 != 0 && a[last]%10 > a[i]%10 {
			last = i
		}
	}

	res := 0
	for i := 0; i < 5; i++ {
		if i == last {
			res += a[i]
		} else {
			res += (a[i] + 9) / 10 * 10
		}
	}

	fmt.Println(res)
}