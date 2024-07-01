package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	buf := make([]byte, 0)
	scanner.Buffer(buf, 100000)

	s := getString()
	s = reverse(s)

	ans := "YES"
L:
	for i := 0; i < len(s); {
		switch {
		case len(s)-i >= 5 && (s[i:i+5] == "maerd" || s[i:i+5] == "esare"):
			i += 5
		case len(s)-i >= 6 && s[i:i+6] == "resare":
			i += 6
		case len(s)-i >= 7 && s[i:i+7] == "remaerd":
			i += 7
		default:
			ans = "NO"
			break L
		}
	}

	fmt.Println(ans)
}

func reverse(s string) string {
	rs := []rune(s)
	n := len(rs)

	for i := 0; i < n/2; i++ {
		rs[i], rs[n-i-1] = rs[n-i-1], rs[i]
	}

	return string(rs)
}

// -----------------------------------------

var scanner = wordScanner()

func wordScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}

func getInt() int {
	scanner.Scan()
	i, err := strconv.Atoi(scanner.Text())
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
	scanner.Scan()
	s := scanner.Text()
	return s
}
