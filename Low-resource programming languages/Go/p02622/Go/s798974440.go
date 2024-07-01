package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int64 {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Scan()
	s := sc.Text()
	sc.Scan()
	t := sc.Text()
	cnt := 0
	for i, _ := range s {
		if s[i] != t[i] {
			cnt++
		}
	}
	fmt.Println(cnt)
}
