package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func init() {
	// read one word/char/int separated by space(s).
	sc.Split(bufio.ScanWords)

	// read one line.
	// sc.Split(bufio.ScanLines)
}

func main() {
	N := nextInt()
	M := nextInt()
	m := map[int][]int{}
	for i := 0; i < N; i ++ {
		A := nextInt()
		B := nextInt()
		m[A] = append(m[A], B)
	}
	candidates := []int{}
	ans := 0
	for i := 1; i <= M; i++ {
		candidates = append(candidates, m[i]...)
		if len(candidates) == 0 {
			continue
		}
		max := maxInt(candidates)
		ans += max
		candidates = removeInt(candidates, max)
	}
	fmt.Println(ans)
}

func maxInt(s []int) int {
	max := s[0]
	for i := 1; i < len(s) ; i++ {
		if s[i] > max {
			max = s[i]
		}
	}
	return max
}

func removeInt(s []int, i int) []int {
	for idx := 0; idx < len(s); idx++ {
		if s[idx] == i {
			s = append(s[:idx], s[idx+1:]...)
			n := make([]int, len(s))
			copy(n, s)
			return n
		}
	}
	return s
}