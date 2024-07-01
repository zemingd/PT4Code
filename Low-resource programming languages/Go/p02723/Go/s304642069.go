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

func main() {
	sc.Split(bufio.ScanWords)

	s := scanText()
	if s[2:3] == s[3:4] && s[4:5] == s[5:6] {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")

}
