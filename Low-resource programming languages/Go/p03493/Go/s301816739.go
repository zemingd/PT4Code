package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	a := next()

	sum := 0
	for i := 0; i < len(a); i++ {
		s := a[i : i+1]
		if s == "1" {
			sum++
		}
	}

	fmt.Fprintln(out, sum)
	return
}

func main() {
	in.Split(bufio.ScanWords)

	defer out.Flush()
	solve()
}

// --- template ---

var (
	in  = bufio.NewScanner(os.Stdin)
	out = bufio.NewWriter(os.Stdout)
)

func next() string {
	in.Scan()
	return in.Text()
}

func nextInt() int {
	s := next()
	i, e := strconv.Atoi(s)
	if e != nil {
		fmt.Println(e)
	}
	return i
}
