package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type rs []rune

func (a rs) Len() int           { return len(a) }
func (a rs) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a rs) Less(i, j int) bool { return a[i] < a[j] }

func main() {
	n := getInt()
	m := make(map[string]int)
	for i := 0; i < n; i++ {
		s := rs(getString())
		sort.Sort(s)
		m[string(s)]++
	}

	ans := 0
	for _, v := range m {
		ans += v * (v - 1) / 2
	}

	fmt.Println(ans)
}

// -----------------------------------------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	// buf := 200001
	// sc.Buffer(make([]byte, buf), buf)
	sc.Split(bufio.ScanWords)
}

func getInt() int {
	i, err := strconv.Atoi(getString())
	if err != nil {
		panic(err)
	}
	return i
}

func getString() string {
	sc.Scan()
	s := sc.Text()
	return s
}
