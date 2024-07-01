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

	if IsKaibun(s) == false {
		fmt.Println("No")
		return
	}
	if IsKaibun(s[:(len(s)-1)/2]) == false {
		fmt.Println("No")
		return
	}
	if IsKaibun(s[(len(s)+1)/2:]) == false {
		fmt.Println("No")
		return
	}

	fmt.Println("Yes")

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
