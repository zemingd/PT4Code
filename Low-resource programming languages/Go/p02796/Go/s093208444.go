package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

func getScanner(fp *os.File) *bufio.Scanner {
	scanner := bufio.NewScanner(fp)
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, 500001), 500000)
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
		cnt = 3
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
	rr := make(RR, n)
	for i := 0; i < n; i++ {
		rr[i].x = getNextInt(scanner)
		rr[i].ll = getNextInt(scanner)
		rr[i].l = rr[i].x - rr[i].ll
		rr[i].r = rr[i].x + rr[i].ll
	}
	sort.Sort(rr)
	max := -math.MaxInt32
	ans := 0
	for i := 0; i < n; i++ {
		ans++
		if max <= rr[i].l {
			max = rr[i].r
		} else {
			ans--
			if max == -math.MaxInt32 || max > rr[i].r {
				max = rr[i].r
			}
		}
	}
	fmt.Fprintln(writer, ans)

}

type Robot struct {
	x, l, r, ll int
}

type RR []Robot

func (a RR) Len() int           { return len(a) }
func (a RR) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a RR) Less(i, j int) bool { return a[i].l < a[j].l }
