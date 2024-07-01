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
	n := nextInt()
	x := make([]int, n)
	s := make([]int, n)
	for i := 0; i < n; i++ {
		x[i] = nextInt()
		s[i] = x[i]
	}

	sort.Ints(s)

	for i := 0; i < n; i++ {
		if s[n/2] > x[i] {
			fmt.Println(s[n/2])
		} else {
			fmt.Println(s[n/2-1])
		}
	}

	// for i := 0; i < n; i++ {
	// 	if s[1] <= x[i] {
	// 		fmt.Println(s[2])
	// 	} else {

	// 		fmt.Println(s[1])
	// 	}
	// }

}
