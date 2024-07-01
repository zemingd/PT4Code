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
  M := nextInt()

	m := make(map[int]int)
	for i := 0; i < N; i++ {
		m[nextInt()] = nextInt()
	}

	var keys []int
	for k := range m {
		keys = append(keys, k)
	}
	sort.Ints(keys)

	// To perform the opertion you want
	var count = 0
	var value = 0
	for _, k := range keys {
		value += k * m[k]
		count += m[k]
		if count >= M {
			value -= (count-M)*k
          break
		}
	}
	fmt.Print(value)
}
