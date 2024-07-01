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
	hh := make([]hint, n)
	for i := 0; i < n; i++ {
		hh[i].x = getNextInt(scanner)
		hh[i].y = getNextInt(scanner)
		hh[i].h = getNextInt(scanner)
	}

	for i := 0; i < 101; i++ {
		for j := 0; j < 101; j++ {
			if valid(i, j, hh) {
				fmt.Fprintln(writer, fmt.Sprintf("%d %d %d", j, i, height(i, j, hh[0])))
				return
			}
		}
	}
}
func absint(i int) int {
	if i < 0 {
		return -i
	}
	return i
}
func valid(y, x int, hh []hint) bool {
	n := len(hh)
	h := 0
	for i := 0; i < n; i++ {
		if hh[i].h == 0 {
			continue
		}
		h2 := height(y, x, hh[i])
		if h < h2 {
			h = h2
		}
	}
	for i := 0; i < n; i++ {
		h2 := height(y, x, hh[i])
		if hh[i].h == 0 {
			if h > h2 {
				return false
			}
			continue
		}
		if h != h2 {
			return false
		}
	}

	return true
}
func height(y, x int, h hint) int {
	return h.h + absint(h.y-y) + absint(h.x-x)
}

type hint struct {
	x, y, h int
}
