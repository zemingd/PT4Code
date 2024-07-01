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
	aa := makeInts(3, 3)
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			aa[i][j] = getNextInt(scanner)
		}
	}
	n := getNextInt(scanner)
	bb := map[int]int{}
	for i := 0; i < n; i++ {
		bb[getNextInt(scanner)] = 1
	}
	for i := 0; i < 3; i++ {
		sum := 0
		for j := 0; j < 3; j++ {
			sum += bb[aa[i][j]]
		}
		if sum == 3 {
			fmt.Fprintln(writer, "Yes")
			return
		}
		sum = 0
		for j := 0; j < 3; j++ {
			sum += bb[aa[j][i]]
		}
		if sum == 3 {
			fmt.Fprintln(writer, "Yes")
			return
		}
	}
	sum := 0
	for i := 0; i < 3; i++ {
		sum += bb[aa[i][i]]
	}
	if sum == 3 {
		fmt.Fprintln(writer, "Yes")
		return
	}
	sum = 0
	for i := 0; i < 3; i++ {
		sum += bb[aa[i][2-i]]
	}
	if sum == 3 {
		fmt.Fprintln(writer, "Yes")
		return
	}

	fmt.Fprintln(writer, "No")
}

func makeInts(h, w int) [][]int {
	index := make([][]int, h, h)
	data := make([]int, h*w, h*w)
	for i := 0; i < h; i++ {
		index[i] = data[i*w : (i+1)*w]
	}
	return index
}
