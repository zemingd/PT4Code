package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 10000)

func readLine() string {
	buf := make([]byte, 0, 10000)
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
	_ = readLine()
	input := strings.Split(readLine(), " ")
	var a []int

	for i := 0; i < len(input); i++ {
		avalue, _ := strconv.Atoi(input[i])
		a = append(a, avalue)
	}

	sort.Sort(sort.IntSlice(a))

	c := 2
	var index int

L:
	for {
		for i := 0; i < len(a); i++ {
			if a[i]%c != 0 {
				index = i
				break L
			}
		}
		c++
	}

	for i := 0; i < len(a); i++ {
		if i != index {
			a[index] = a[i]
			break
		}
	}

	var ans int

L2:
	for i := a[index]; i > 0; i-- {
		for j := 0; j < len(a); j++ {
			if a[j]%i != 0 {
				continue L2
			}
		}
		if ans < i {
			ans = i
		}
	}

	fmt.Println(ans)
}
