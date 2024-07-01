package main

import (
	"bufio"
	"os"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

//func nextInt() int {
//	sc.Scan()
//	i, e := strconv.Atoi(sc.Text())
//	if e != nil {
//		panic(e)
//	}
//	return i
//}

func main() {
	a := nextString()
	r := a[0]

	if r >= 'a' && r <= 'z' {
		fmt.Println("a")
		return
	}
	fmt.Println("A")
	return
}
