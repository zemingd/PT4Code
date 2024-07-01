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
		cnt = 1
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
	ee := make([][]edge, n)
	for i := 0; i < n-1; i++ {
		u := getNextInt(scanner) - 1
		v := getNextInt(scanner) - 1
		w := getNextInt(scanner)
		appendEdge(u, v, w, i, ee)
		appendEdge(v, u, w, i, ee)
	}
	cc := make([]int, n)
	dfs(0, -1, 0, ee, cc)
	for i := 0; i < n; i++ {
		fmt.Fprintln(writer, cc[i])
	}
}

func dfs(c, p, w int, ee [][]edge, cc []int) {
	cc[c] = w % 2
	for _, e := range ee[c] {
		if e.to == p {
			continue
		}
		dfs(e.to, c, w+e.w, ee, cc)
	}
}
func appendEdge(from, to, w, id int, ee [][]edge) {
	ee[from] = append(ee[from], edge{
		to: to,
		id: id,
		w:  w,
	})
}

type edge struct {
	to, id, w int
}
