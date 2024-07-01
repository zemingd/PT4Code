package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var (
	scanner = bufio.NewScanner(os.Stdin)
	w       = bufio.NewWriter(os.Stdout)
)

func readInt() (read int) {
	scanner.Scan()
	read, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return
}

func main() {
	scanner.Split(bufio.ScanWords)
	defer w.Flush()

	n := readInt()
	k := readInt()
	p := make([]int, n)
	for i := 0; i < n; i++ {
		p[i] = readInt()
	}

	sort.Ints(p)

	ans := 0
	for i := 0; i < k; i++ {
		ans += p[i]
	}
	fmt.Println(ans)
}