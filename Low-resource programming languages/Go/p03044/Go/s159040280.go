package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func getScanner(fp io.Reader) *bufio.Scanner {
	sc := bufio.NewScanner(fp)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 500001), 500000)
	return sc
}

func getHugeScanner(fp io.Reader, size int) *bufio.Scanner {
	sc := bufio.NewScanner(fp)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, size), size)
	return sc
}

func getNextString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func getNextInt(sc *bufio.Scanner) int {
	i, _ := strconv.Atoi(getNextString(sc))
	return i
}

func getNextInt64(sc *bufio.Scanner) int64 {
	i, _ := strconv.ParseInt(getNextString(sc), 10, 64)
	return i
}

func getNextFloat64(sc *bufio.Scanner) float64 {
	i, _ := strconv.ParseFloat(getNextString(sc), 64)
	return i
}

func DFS(color []int, to, cost [][]int, i, c int) {
	color[i] = c
	for k, v := range to[i] {
		if color[v] != -1 {
			continue
		}
		DFS(color, to, cost, v, color[i] ^ cost[i][k] % 2)
	}
}

func Solve(stdin io.Reader, stdout io.Writer) {
	sc := getScanner(stdin)

	n := getNextInt(sc)

	to := make([][]int, n)
	cost := make([][]int, n)

	color := make([]int, n)

	for k := range color {
		color[k] = -1
	}

	for i := 1; i < n; i++ {
		u := getNextInt(sc)
		v := getNextInt(sc)
		w := getNextInt(sc)
		u--
		v--

		to[u] = append(to[u], v)
		to[v] = append(to[v], u)
		cost[u] = append(cost[u], w)
		cost[v] = append(cost[v], w)
	}

	DFS(color, to, cost, 0, 0)

	for _, v := range color {
		_, _ = fmt.Fprintf(stdout, "%v\n", v)
	}

}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}