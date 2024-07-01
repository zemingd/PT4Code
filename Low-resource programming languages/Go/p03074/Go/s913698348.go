package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n := getInt()
	k := getInt()
	s := []rune(getString())

	r := 0
	ans := 0
	count := 0
	if s[0] == '0' {
		count++
	}

	for l := 0; l < n; l++ {
		for (r < n) && (count <= k) {
			if (r+1 < n) && (s[r] == '1') && (s[r+1] == '0') {
				count++
			}
			r++
		}

		ans = max(ans, r-l)

		if (l+1 < n) && (s[l] == '0') && (s[l+1] == '1') {
			count--
		}
	}

	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

// -----------------------------------------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	tmp := 200001
	sc.Buffer(make([]byte, tmp), tmp)
	sc.Split(bufio.ScanWords)
}

func getInt() int {
	i, err := strconv.Atoi(getString())
	if err != nil {
		panic(err)
	}
	return i
}

func getString() string {
	sc.Scan()
	s := sc.Text()
	return s
}
