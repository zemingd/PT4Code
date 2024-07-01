package main

import (
	"bufio"
	"fmt"
	"os"
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

	m := map[int]int{}

	N := nextInt()

	for i := 0; i < N; i++ {

		a := nextInt()

		if 0 <= a && a <= 399 {
			m[0]++
		} else if 400 <= a && a <= 799 {
			m[1]++
		} else if 800 <= a && a <= 1199 {
			m[2]++
		} else if 1200 <= a && a <= 1599 {
			m[3]++
		} else if 1600 <= a && a <= 1999 {
			m[4]++
		} else if 2000 <= a && a <= 2399 {
			m[5]++
		} else if 2400 <= a && a <= 2799 {
			m[6]++
		} else if 2800 <= a && a <= 3199 {
			m[7]++
		} else {
			m[8]++
		}
	}

	// wild := m[8]
	// s := make([]int, 0)
	// for k, v := range m {
	// 	if k == 8 {
	// 		continue
	// 	}

	// 	s = append(s, v)
	// }

	// sort.Ints(s)
	var max, min int
	if v, ok := m[8]; ok {
		max = len(m) - 1 + v
		min = len(m) - 1
	} else {
		max = len(m)
		min = len(m)
	}

	fmt.Printf("%d %d\n", min, max)
}
