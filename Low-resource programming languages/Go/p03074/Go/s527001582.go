package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	BufferSize = 10 * 10 * 10 * 10 * 10 * 10
)

func scanInt(sc *bufio.Scanner) int {
	if !sc.Scan() {
		panic(nil)
	}

	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}

	return i
}

func scanStr(sc *bufio.Scanner) string {
	if !sc.Scan() {
		panic(nil)
	}

	return sc.Text()
}

func getRev(before byte) byte {
	if before == '0' {
		return '1'
	}
	return '0'
}

func check() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

	n := scanInt(sc)
	k := scanInt(sc)
	s := scanStr(sc)

	// fmt.Printf("n = %+v\n", n)
	// fmt.Printf("k = %+v\n", k)
	// fmt.Printf("s = %+v\n", s)

	seq := make([]int, 0, len(s)+10)
	length := make([]int, 0, len(s)+10)

	var before byte
	index := -1
	for i := 0; i < n; i++ {
		if s[i] != before {
			seq = append(seq, i)
			length = append(length, 1)
			index++
		} else {
			length[index] += 1
		}
		before = s[i]
	}

	// fmt.Printf("seq = %+v\n", seq)
	// fmt.Printf("length = %+v\n", length)

	max := 0
	for i := 0; i < len(seq); i++ {
		// fmt.Printf("index = %d\n", i)
		if s[i] == '0' {
			v := 0
			// fmt.Printf("  limit = %d\n", i+2*k)
			for j := i; j < i+2*k; j++ {
				if j >= len(length) {
					break
				}
				v += length[j]
				// fmt.Printf("  j = %d\n", j)
				// fmt.Printf("  length[j] = %d\n", length[j])
				// fmt.Printf("  v = %d\n", v)
			}
			if v > max {
				max = v
				// fmt.Printf("%d\n", max)
			}
		} else {
			v := 0
			// fmt.Printf("  limit = %d\n", i+2*k+1)
			for j := i; j < i+2*k+1; j++ {
				if j >= len(length) {
					break
				}
				v += length[j]
				// fmt.Printf("  j = %d\n", j)
				// fmt.Printf("  length[j] = %d\n", length[j])
				// fmt.Printf("  v = %d\n", v)
			}
			if v > max {
				max = v
				// fmt.Printf("%d\n", max)
			}
		}
	}

	fmt.Printf("%d\n", max)
}

func printDP(dp [][]int) {
	fmt.Printf("dp:\n")
	fmt.Printf("    %+v\n", dp)
}

func main() {
	check()
}
