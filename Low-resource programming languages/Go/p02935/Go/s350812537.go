package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

func Solve(stdin io.Reader, stdout io.Writer) {
	sc := bufio.NewScanner(stdin)

	/* 単語ごとに入力するならこれ */
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	v := make([]int, n)

	for i := 0; i < n; i++ {
		sc.Scan()
		v[i], _ = strconv.Atoi(sc.Text())
	}

	sort.Ints(v)

	var sum float64 = float64(v[0])

	for i := 1; i < n; i++ {
		sum = (sum + float64(v[i])) / 2
	}

	/* 出力用 */
	_, _ = fmt.Fprintf(stdout, "%v\n", sum)
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}