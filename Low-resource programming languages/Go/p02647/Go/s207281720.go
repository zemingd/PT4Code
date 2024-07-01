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

var ANext [200001]int
var NFlag [200001]bool
var NCount int

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)
	A := NextLineInt()

	for k := 0; k < K; k++ {
		for i := 0; i < N; i++ {
			ANext[i] = 0
		}

		for x, a := range A {
			ANext[Max(0, x-a)] += 1
			ANext[Min(N, x+a+1)] -= 1
		}

		for i := 0; i < N; i++ {
			ANext[i+1] += ANext[i]
			A[i] = ANext[i]
			if A[i] == N && !NFlag[i] {
				NFlag[i] = true
				NCount += 1
			}
		}

		if NCount == N {
			break
		}
	}

	for _, a := range A {
		fmt.Printf("%d ", a)
	}
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
			ret[i] = int(v)
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
