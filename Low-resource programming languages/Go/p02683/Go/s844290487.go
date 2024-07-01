package main

import (
	"bufio"
	"fmt"
	"math"
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
	x := getNextInt(scanner)
	cc := make([]int, n)
	aa := makeInts(n, m)
	for i := 0; i < n; i++ {
		cc[i] = getNextInt(scanner)
		for j := 0; j < m; j++ {
			aa[i][j] = getNextInt(scanner)
		}
	}

	ans := math.MaxInt32
	for i := 0; i < 1<<uint(n); i++ {
		sum := 0
		al := make([]int, m)
		for j := 0; j < n; j++ {
			if i>>uint(j)%2 == 0 {
				continue
			}
			sum += cc[j]
			for k := 0; k < m; k++ {
				al[k] += aa[j][k]
			}
		}
		if master(x, al) == false {
			continue
		}
		if ans > sum {
			ans = sum
		}
	}
	if ans == math.MaxInt32 {
		fmt.Fprintln(writer, -1)
		return
	}
	fmt.Fprintln(writer, ans)
}

func master(x int, al []int) bool {
	for _, a := range al {
		if a < x {
			return false
		}
	}
	return true
}
func makeInts(h, w int) [][]int {
	index := make([][]int, h, h)
	data := make([]int, h*w, h*w)
	for i := 0; i < h; i++ {
		index[i] = data[i*w : (i+1)*w]
	}
	return index
}
