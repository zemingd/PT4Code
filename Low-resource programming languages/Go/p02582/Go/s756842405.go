package main

import (
	"bufio"
	"os"
	"fmt"
	"strings"
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

//func nextUint64() uint64 {
//	sc.Scan()
//	i, e := strconv.ParseUint(sc.Text(), 10, 64)
//	if e != nil {
//		panic(e)
//	}
//	return i
//}

func main() {
	s := nextString()
	slice := strings.Split(s, "")
	count := 0
	max := 0

	for i := range slice {
		if slice[i] == "R" {
			count++
			max = count
		} else {
			count = 0
		}
	}

	fmt.Println(max)
}
