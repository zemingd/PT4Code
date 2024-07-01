package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var (
	N, K, A, B int
	pos            = make([]int, 0)
	neg            = make([]int, 0)
	all            = make([]int, 0)
	MOD            = 1000000000 + 7
	answer     int = 1
)

func main() {
	defer writer.Flush()
	readVariables()
	A = len(pos)
	B = len(neg)
	if B == 0 {
		posOnly()
	} else if A == 0 {
		negOnly()
	} else {
		otherwise()
	}
	println(answer)
}

func posOnly() {
	for i := 0; i < K; i++ {
		answer *= all[i]
		answer %= MOD
	}
}

func negOnly() {
	for i := 0; i < K; i++ {
		if K%2 == 0 {
			answer *= all[N-1-i]
		} else {
			answer *= all[i]
		}
		answer += MOD
		answer %= MOD
	}
}

func otherwise() {
	// println(pos, neg)
	ppairs := make([]int, 0)
	npairs := make([]int, 0)
	for i := 0; 2*i+1 < B; i++ {
		p := neg[2*i] * neg[2*i+1]
		npairs = append(npairs, p)
	}
	for i := 0; 2*i+1 < A; i++ {
		p := pos[2*i] * pos[2*i+1]
		ppairs = append(ppairs, p)
	}
	sort.Slice(npairs, func(i, j int) bool {
		return npairs[i] > npairs[j]
	})
	sort.Slice(ppairs, func(i, j int) bool {
		return ppairs[i] > ppairs[j]
	})
	// println(ppairs, npairs)
	var i, j int
	for 2*(i+j+1) <= K {
		if ppairs[i] <= npairs[j] {
			answer *= npairs[j]
			j++
		} else {
			answer *= ppairs[i]
			i++
		}
		answer %= MOD
	}
	// println(i, j, 2*(i+j), K)
	// println(answer, pos[2*i])
	if 2*(i+j) < K {
		answer *= pos[2*i]
		answer %= MOD
	}
}

func readVariables() {
	N, K = nextInt(), nextInt()
	for i := 0; i < N; i++ {
		v := nextInt()
		all = append(all, v)
		if v >= 0 {
			pos = append(pos, v)
		} else {
			neg = append(neg, v)
		}
	}
	sort.Slice(pos, func(i, j int) bool {
		return pos[i] > pos[j]
	})
	sort.Slice(neg, func(i, j int) bool {
		return neg[i] < neg[j]
	})
	sort.Slice(all, func(i, j int) bool {
		return all[i] > all[j]
	})
}

/* Template */

var (
	scanner *bufio.Scanner
	writer  *bufio.Writer
)

func init() {
	Max := 1001001
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Buffer(make([]byte, 0, Max), Max)
	scanner.Split(bufio.ScanWords)
	writer = bufio.NewWriterSize(os.Stdout, Max)
}

func println(a ...interface{}) {
	fmt.Fprintln(writer, a...)
}

func printf(format string, a ...interface{}) {
	fmt.Fprintf(writer, format, a...)
}

//nextInt converts next token from stdin and returns integer value.
//nextInt panics when conversion into an integer fails.
func nextInt() int {
	if !scanner.Scan() {
		panic("No more token.")
	}
	num, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic("nextInt(): cannot convert to int: " + scanner.Text())
	}
	return num
}

func nextStr() string {
	if !scanner.Scan() {
		panic("No more token.")
	}
	return scanner.Text()
}

// MinInt returns minimum argument
func MinInt(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}

//MaxInt returns maximum argument
func MaxInt(x, y int) int {
	if x < y {
		return y
	} else {
		return x
	}
}

//AbsInt returns |x| for x
func AbsInt(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
