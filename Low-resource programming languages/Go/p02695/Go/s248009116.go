package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func getScanner(fp *os.File) *bufio.Scanner {
	scanner := bufio.NewScanner(fp)
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, 1000005), 1000005)
	return scanner
}

func getNextString(scanner *bufio.Scanner) string {
	scanner.Scan()
	return scanner.Text()
}

func getNextInt(scanner *bufio.Scanner) int {
	i, _ := strconv.Atoi(getNextString(scanner))
	return i
}

func getNextInt64(scanner *bufio.Scanner) int64 {
	i, _ := strconv.ParseInt(getNextString(scanner), 10, 64)
	return i
}

func getNextUint64(scanner *bufio.Scanner) uint64 {
	i, _ := strconv.ParseUint(getNextString(scanner), 10, 64)
	return i
}

func getNextFloat64(scanner *bufio.Scanner) float64 {
	i, _ := strconv.ParseFloat(getNextString(scanner), 64)
	return i
}

func main() {
	fp := os.Stdin
	wfp := os.Stdout
	cnt := 0

	if os.Getenv("MASPY") == "ますピ" {
		fp, _ = os.Open(os.Getenv("BEET_THE_HARMONY_OF_PERFECT"))
		cnt = 2
	}
	if os.Getenv("MASPYPY") == "ますピッピ" {
		wfp, _ = os.Create(os.Getenv("NGTKANA_IS_GENIUS10"))
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(wfp)
	solve(scanner, writer)
	for i := 0; i < cnt; i++ {
		fmt.Fprintln(writer, "-----------------------------------")
		solve(scanner, writer)
	}

	writer.Flush()
}

func solve(scanner *bufio.Scanner, writer *bufio.Writer) {
	n := getNextInt(scanner)
	m := getNextInt(scanner)
	q := getNextInt(scanner)

	ggg := make([][][]int, n)
	for i := 0; i < n; i++ {
		ggg[i] = make([][]int, n)
		for j := 0; j < n; j++ {
			ggg[i][j] = make([]int, m+1)
		}
	}
	for i := 0; i < q; i++ {
		a := getNextInt(scanner) - 1
		b := getNextInt(scanner) - 1
		c := getNextInt(scanner)
		d := getNextInt(scanner)
		ggg[a][b][c] = maxint(ggg[a][b][c], d)
	}

	aa := make([]int, n)
	ans := dfs(0, 1, m, aa, ggg)

	fmt.Fprintln(writer, ans)
}

func maxint(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func dfs(i, x, m int, aa []int, ggg [][][]int) int {
	n := len(aa)
	ans := 0
	if i == n {
		for l := 0; l < n; l++ {
			for r := l + 1; r < n; r++ {
				ans += ggg[l][r][aa[r]-aa[l]]
			}
		}
		return ans
	}
	for now := x; now <= m; now++ {
		aa[i] = now
		ans = maxint(ans, dfs(i+1, now, m, aa, ggg))
	}

	return ans
}
