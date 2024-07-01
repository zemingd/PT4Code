package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	a := nextInt()
	b := nextInt()

	if a*b%2 == 1 {
		io.Println("Odd")
	} else {
		io.Println("Even")
	}

	return
}

func main() {
	defer out.Flush()

	in.Split(bufio.ScanWords)

	ans := solve()
	fmt.Fprintln(out, ans)
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
