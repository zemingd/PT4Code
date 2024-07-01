package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
	buf := make([]byte, 0, 1000000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func main() {
	n, _ := strconv.Atoi(readLine())
	var v []int
	for i := 0; i < 5; i++ {
		in, _ := strconv.Atoi(readLine())
		v = append(v, in)
	}
	sort.Ints(v)
	if n%v[0] == 0 {
		fmt.Println(n/v[0] + 4)
	} else {
		fmt.Println((n/v[0] + 1) + 4)
	}
}
