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
	a, b, k := nextInt(), nextInt(), nextInt()
	var res []int
	already := map[int]bool{}

	for i := 0; i < k && a+i <= b; i++ {
		res = append(res, a+i)
		already[a+i] = true
	}

	for i := 0; i < k && b-k+i+1 >= a; i++ {
		num := b - k + i + 1
		if !already[num] {
			res = append(res, num)
		}
	}

	for i := 0; i < len(res); i++ {
		fmt.Println(res[i])
	}
}
