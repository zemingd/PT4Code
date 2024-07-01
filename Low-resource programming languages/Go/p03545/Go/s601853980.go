package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	s := getIntSlice(4)

	ans := ""
	for i := 0; i < (1 << 3); i++ {
		x := s[0]
		ops := make([]string, 3)
		for j := uint(0); j < 3; j++ {
			if (i & (1 << j)) > 0 {
				ops[j] = "+"
				x += s[j+1]
			} else {
				ops[j] = "-"
				x -= s[j+1]
			}
		}
		if x == 7 {
			a := strconv.Itoa(s[0])
			for k := 0; k < 3; k++ {
				a += ops[k] + strconv.Itoa(s[k+1])
			}
			a += "=7"

			ans = a
		}
	}

	fmt.Println(ans)
}

// -----------------------------------------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	// buf := 200001
	// sc.Buffer(make([]byte, buf), buf)
	sc.Split(bufio.ScanRunes)
}

func getInt() int {
	i, err := strconv.Atoi(getString())
	if err != nil {
		panic(err)
	}
	return i
}

func getIntSlice(n int) []int {
	is := make([]int, n)
	for i := range is {
		is[i] = getInt()
	}
	return is
}

func getString() string {
	sc.Scan()
	s := sc.Text()
	return s
}
