package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)

	s := nextStr()
	if len(s) == 1 {
		fmt.Println("0")
		return
	}
	if IsKaibun(s) == true {
		fmt.Println("0")
		return
	}

	n := len(s)
	diff := 0

	for i := 0; i < n/2; i++ {
		c := s[i]
		if c != s[n-i-1] {
			diff++
		}
	}

	fmt.Println(diff)
}

// IsKaibun return IsKaibun
func IsKaibun(s string) bool {
	n := len(s)

	for i, c := range s {
		if c != rune(s[n-i-1]) {
			return false
		}
	}

	return true
}

// ---- readfunc
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
