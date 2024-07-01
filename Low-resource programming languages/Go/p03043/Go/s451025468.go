package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

const BUFSIZE = 10000000

var rdr = bufio.NewReaderSize(os.Stdin, BUFSIZE)

func main() {
	var N, k int
	var ans float64 = 0
	fmt.Scanf("%d %d", &N, &k)

	for i := 1; i < N+1; i++ {
		var n int = i
		var j = 0
		for {
			if n >= k {
				break
			}
			j += 1
			n = n * 2
		}
		ans += float64(1) / float64(N) * math.Pow(0.5, float64(j))
	}
	fmt.Println(ans)
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
