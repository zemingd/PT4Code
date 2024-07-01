package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func bisectLeft(a []int, x int) int {
	lo := 0
	hi := len(a)
	for lo < hi {
		mid := (lo + hi) / 2
		if a[mid] < x {
			lo = mid + 1
		} else {
			hi = mid
		}
	}
	return lo
}

func main() {
	N := readInt()
	L := make([]int, N)
	for i := 0; i < N; i++ {
		L[i] = readInt()
	}

	sort.Sort(sort.IntSlice(L))
	result := 0
	for i := 0; i < N-2; i++ {
		for j := i + 1; j < N-1; j++ {
			x := L[i] + L[j]
			result += bisectLeft(L, x) - (j + 1)
		}
	}
	fmt.Println(result)
}

const (
	ioBufferSize = 1 * 1024 * 1024 // 1 MB
)

var stdinScanner = func() *bufio.Scanner {
	result := bufio.NewScanner(os.Stdin)
	result.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	result.Split(bufio.ScanWords)
	return result
}()

func readString() string {
	stdinScanner.Scan()
	return stdinScanner.Text()
}

func readInt() int {
	result, err := strconv.Atoi(readString())
	if err != nil {
		panic(err)
	}
	return result
}
