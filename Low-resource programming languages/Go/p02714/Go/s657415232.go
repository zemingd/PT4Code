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
	s := getNextString(scanner)
	rr := make([]int, n+1)
	gg := make([]int, n+1)
	bb := make([]int, n+1)

	for i := 0; i < n; i++ {
		rr[i+1] = rr[i]
		gg[i+1] = gg[i]
		bb[i+1] = bb[i]
		if s[i] == 'R' {
			rr[i+1]++
		}
		if s[i] == 'G' {
			gg[i+1]++
		}
		if s[i] == 'B' {
			bb[i+1]++
		}
	}
	var ans int64
	for i := 0; i < n; i++ {
		for j := i + 2; j < n; j++ {
			if s[i] == s[j] {
				continue
			}
			if s[i] != 'R' && s[j] != 'R' {
				ans += int64(rr[j] - rr[i+1])
				if (j-i)%2 == 0 && s[(i+j)/2] == 'R' {
					ans--
				}
				continue
			}
			if s[i] != 'G' && s[j] != 'G' {
				ans += int64(gg[j] - gg[i+1])
				if (j-i)%2 == 0 && s[(i+j)/2] == 'G' {
					ans--
				}
				continue
			}
			if s[i] != 'B' && s[j] != 'B' {
				ans += int64(bb[j] - bb[i+1])
				if (j-i)%2 == 0 && s[(i+j)/2] == 'B' {
					ans--
				}
				continue
			}
		}
	}
	fmt.Fprintln(writer, ans)
}
