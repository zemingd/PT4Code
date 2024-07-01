package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

const maxBuf = 200100

var buf []byte = make([]byte, maxBuf)
var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(buf, maxBuf)
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	sc.Scan()
	r, _ := strconv.Atoi(sc.Text())
	return r
}

func readFloat64() float64 {
	sc.Scan()
	r, _ := strconv.ParseFloat(sc.Text(), 64)
	return r
}
func main() {

	//fmt.Scan(&n)
	n := readInt()
	a := make([]int, n)
	for i := 0; i < n; i++ {
		//fmt.Scan(&a[i])
		a[i] = readInt()
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))

	ans := a[0]
	c := 1
	for i := 1; i < n-1; i++ {
		ans += a[c]
		if i%2 == 0 {
			c++
		}
	}

	fmt.Println(ans)
}
