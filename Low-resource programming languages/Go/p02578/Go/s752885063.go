package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

//func nextString() string {
//	sc.Scan()
//	return sc.Text()
//}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

//func nextUint64() uint64 {
//	sc.Scan()
//	i, e := strconv.ParseUint(sc.Text(), 10, 64)
//	if e != nil {
//		panic(e)
//	}
//	return i
//}

func main() {
	n := nextInt()
	a := make([]int, n, n)

	for i := 0; i < n; i++  {
		a[i] = nextInt()
	}

	temp := 0
	ans := 0

	for i := 0; i < n; i++ {
		if temp > a[i] {
			ans += temp - a[i]
		} else {
			temp = a[i]
		}
	}

	fmt.Println(ans)
}
