package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

const BUFSIZE = 10000000

var rdr = bufio.NewReaderSize(os.Stdin, BUFSIZE)

func main() {
	var n, k int
	var s string

	fmt.Scanf("%d %d", &n, &k)
	fmt.Scanf("%s", &s)

	for i, v := range s {
		if i == k-1 {
			fmt.Print(string(v + (97 - 65)))
		} else {
			fmt.Print(string(v))
		}
	}
	fmt.Println()
}

func NextLineInt() []int {
	buf := make([]byte, 0, BUFSIZE)
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
	str := strings.Split(string(buf), " ")
	l := len(str)

	ret := make([]int, l)

	for i := range str {
		// ret[i], ok = strconv.Atoi(str[i])
		v, ok := strconv.Atoi(str[i])

		if ok == nil {
			ret[i] = v
		}
	}

	return ret
}

func Bool2Int(b bool) int {
	if b {
		return 1
	} else {
		return 0
	}
}

func Abs(v int) int {
	if v < 0 {
		return -v
	}
	return v
}

func Min(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func Max(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func Distance(a, b int) int {
	return Abs(a - b)
}
