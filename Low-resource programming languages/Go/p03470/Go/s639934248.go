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
	
	for i := 0; i < N; i++ {
      D = append(D, nextInt())
	}
	m := map[int]int{}

	//sort.Sort(sort.IntSlice(D))

	for _, key := range D {
		if _, ok := m[key]; !ok {
			m[key] = 1
		} else {
			m[key] += 1
		}
	}
	

	fmt.Println(len(m))

}
