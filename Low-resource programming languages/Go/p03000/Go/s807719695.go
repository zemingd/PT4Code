package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
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
	ins := strings.Split(readLine(), " ")

	// , _ := strconv.Atoi(ins[0])
	x, _ := strconv.Atoi(ins[1])

	var l []int
	ls := strings.Split(readLine(), " ")
	for _, v := range ls {
		a, _ := strconv.Atoi(v)
		l = append(l, a)
	}

	var c int
	var i int

	for _, v := range l {
		if x >= i {
			c++
		}
		i += v
	}

	fmt.Println(c)
}
