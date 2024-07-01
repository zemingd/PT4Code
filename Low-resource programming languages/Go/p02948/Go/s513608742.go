package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	n := readInt()
	m := readInt()

	jobs := map[int][]int{}
	for i := 0; i < n; i++ {
		a := readInt()
		b := readInt()
		jobs[a] = append(jobs[a], b)
	}

	result := 0
	candidates := make([]int, 0, 100000)
	for i := 1; i < m+1; i++ {
		_, ok := jobs[i]
		if ok {
			candidates = append(candidates, jobs[i]...)
			sort.Sort(sort.Reverse(sort.IntSlice(a)))
		} else {
			if len(candidates) == 0 {
				continue
			}
		}
		result += candidates[0]
		candidates = candidates[1:]
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
