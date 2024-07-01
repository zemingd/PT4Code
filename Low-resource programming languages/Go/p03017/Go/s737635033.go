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

	if os.Getenv("MASPY") == "ますピ" {
		fp, _ = os.Open(os.Getenv("BEET_THE_HARMONY_OF_PERFECT"))
	}
	if os.Getenv("MASPYPY") == "ますピッピ" {
		wfp, _ = os.Create(os.Getenv("NGTKANA_IS_GENIUS10"))
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(wfp)

	_ = getNextInt(scanner)
	a := getNextInt(scanner) - 1
	b := getNextInt(scanner) - 1
	c := getNextInt(scanner) - 1
	d := getNextInt(scanner) - 1
	s := getNextString(scanner)

	for i := a; i < c; i++ {
		if i+2 < c && s[i+1] == '#' && s[i+2] == '#' {
			fmt.Println("No")
			return
		}
	}
	for i := b; i < d; i++ {
		if i+2 < d && s[i+1] == '#' && s[i+2] == '#' {
			fmt.Println("No")
			return
		}
	}
	if c < d {
		fmt.Println("Yes")
		return
	}

	for i := b; i < c; i++ {
		if s[i-1] == '.' && s[i] == '.' && s[i+1] == '.' {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")
	writer.Flush()
}
