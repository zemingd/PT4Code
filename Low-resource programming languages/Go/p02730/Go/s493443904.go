package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func readFloat64() float64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return float64(i)
}

func main() {
	sc.Split(bufio.ScanWords)
	s := readString()
	n := len(s)
	s1 := s[0 : (n-1)/2]
	s2 := s[((n+3)/2)-1 : n]

	if isPalindrome(s) && isPalindrome(s1) && isPalindrome(s2) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func isPalindrome(s string) bool {
	n := len(s)
	for i := 0; i < n; i++ {
		if i == n-i-1 {
			break
		}
		if s[i] != s[n-i-1] {
			return false
		}
	}
	return true
}
