package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	nextReader = newScanner()
	s := nextString()
	q := nextInt()
	cnt := 0
	for i := 0; i < q; i++ {
		t := nextInt()
		if t == 1 {
			cnt++
		}
		if t == 2 {
			f, c := nextInt(), nextString()
			if f == 1 {
				if cnt%2 == 0 {
					s = c + s
				} else {
					s = s + c
				}
			}
			if f == 2 {
				if cnt%2 == 0 {
					s = s + c
				} else {
					s = c + s
				}
			}
		}
	}
	if cnt%2 == 0 {
		fmt.Println(s)
	} else {
		fmt.Println(reverse(s))
	}
}

func reverse(s string) string {
	r := []rune(s)
	for i, j := 0, len(r)-1; i < j; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}

// ---------------------------------------------------------------
// I/O
// ---------------------------------------------------------------
var nextReader func() string

func newScanner() func() string {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, 1024), int(1e11))
	sc.Split(bufio.ScanWords)
	return func() string {
		sc.Scan()
		return sc.Text()
	}
}

func nextString() string { return nextReader() }

func nextInt() int { n, _ := strconv.Atoi(nextReader()); return n }

func nextInts(size int) []int {
	ns := make([]int, size)
	for i := 0; i < size; i++ {
		ns[i] = nextInt()
	}
	return ns
}
