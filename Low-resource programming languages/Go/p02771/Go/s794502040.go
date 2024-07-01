package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

// utils
func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

// func max(a, b int) int {
// 	return int(math.Max(float64(a), float64(b)))
// }

// func min(a, b int) int {
// 	return int(math.Min(float64(a), float64(b)))
// }

// func abs(a, b int) int {
// 	return int(math.Abs(float64(a) - float64(b)))
// }

// //data types

// type pair struct {
// 	first  int
// 	second int
// }

func main() {
	sc.Split(bufio.ScanWords)
	m := make(map[string]int)

	for i := 0; i < 3; i++ {
		v := next()
		if _, ok := m[v]; ok {
			m[v]++
		}
		m[v] = 1
	}

	for _, v := range m {
		if v == 2 {
			fmt.Print("Yes")
			return
		}
	}
	fmt.Print("No")
}
