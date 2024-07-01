package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"

)

func main() {
	solve(os.Stdin, os.Stdout)
}

type stringSorter []byte

func (a stringSorter) Len() int           { return len(a) }
func (a stringSorter) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a stringSorter) Less(i, j int) bool { return a[i] < a[j] }

func solve(stdin io.Reader, stdout io.Writer) {
	var n int

	var sc = make(map[string]int)

	reader := bufio.NewScanner(stdin)

	reader.Scan()
	n, _ = strconv.Atoi(reader.Text())

	for i := 0; i < n; i++ {
		reader.Scan()
		sort.Sort(stringSorter(reader.Bytes()))
		sc[reader.Text()]++
	}

	w := 0
	for _, v := range sc {
		w += v * (v - 1) / 2
	}
	fmt.Fprintln(stdout, w)
}

