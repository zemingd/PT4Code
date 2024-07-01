package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func scanInt64() int64 {
	sc.Scan()
	i, _ := strconv.ParseInt(sc.Text(), 10, 64)
	return i
}

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = scanInt()
	}
	return res
}

func scanInts64(n int) []int64 {
	res := make([]int64, n)
	for i := range res {
		res[i] = scanInt64()
	}
	return res
}

func scanText() string {
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Scan()
	return sc.Text()
}

var sc = bufio.NewScanner(os.Stdin)

func isPalindrome(s string, n int) bool {
	for i, j := 0, n-1; i < j; i, j = i+1, j-1 {
		if s[i:i+1] == s[j:j+1] {
			continue
		}
		return false
	}
	return true
}

func main() {
	sc.Split(bufio.ScanWords)
	s := scanText()
	n := len(s)

	if isPalindrome(s, n) && isPalindrome(s[0:(n-1)/2], len(s[0:(n-1)/2])) && isPalindrome(s[(n+3)/2-1:n], len(s[(n+3)/2-1:n])) {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}
