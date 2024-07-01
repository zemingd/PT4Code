package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func Solve(stdin io.Reader, stdout io.Writer) {
	sc := bufio.NewScanner(stdin)

	/* 単語ごとに入力するならこれ */
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	var sum float64

	for i := 0; i < n; i++ {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())
		sum += 1.0 / float64(a)
	}

	/* 出力用 */
	_, _ = fmt.Fprintf(stdout, "%v\n", 1 / sum)
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}