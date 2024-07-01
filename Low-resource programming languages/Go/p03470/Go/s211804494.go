package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

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

	N := nextInt()
	D := make([]int, N)
	//N := 4
	//D := []int{50, 30, 50, 100, 50, 80, 30, 120, 120, 40, 90, 0, 120, 11, 1, 2, 3, 4}
	//count := 0
	for i := 0; i < N; i++ {
		D = append(D, nextInt())
	}
	m := map[int]int{}

	sort.Sort(sort.IntSlice(D))

	for _, key := range D {
		if _, ok := m[key]; !ok {
			m[key] = 1
		} else {
			m[key] += 1
		}
	}

	fmt.Println(len(m))

}
