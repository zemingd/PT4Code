package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := getScanner()
	writer := bufio.NewWriter(os.Stdout)

	h := getNextInt(scanner)
	w := getNextInt(scanner)
	ss := make([]string, h)
	for i := 0; i < h; i++ {
		ss[i] = getNextString(scanner)
	}

	horizontal := make([][]int, h)
	for y := 0; y < h; y++ {
		horizontal[y] = make([]int, w)
		stack := make([]int, w)
		i := 0
		for x := 0; x < w; x++ {
			if ss[y][x] == '.' {
				stack[i] = x
				i++
				continue
			}
			count := i
			for i > 0 {
				i--
				horizontal[y][stack[i]] = count
			}
		}
		count := i
		for i > 0 {
			i--
			horizontal[y][stack[i]] = count
		}
	}
	vertical := make([][]int, w)
	for x := 0; x < w; x++ {
		vertical[x] = make([]int, h)
		stack := make([]int, h)
		i := 0
		for y := 0; y < h; y++ {
			if ss[y][x] == '.' {
				stack[i] = y
				i++
				continue
			}
			count := i
			for i > 0 {
				i--
				vertical[x][stack[i]] = count
			}
		}
		count := i
		for i > 0 {
			i--
			vertical[x][stack[i]] = count
		}
	}
	max := 0
	for y := 0; y < h; y++ {
		for x := 0; x < w; x++ {
			counts := horizontal[y][x] + vertical[x][y] - 1
			if max < counts {
				max = counts
			}
		}
	}
	fmt.Fprintln(writer, max)
	writer.Flush()
}

func getScanner() *bufio.Scanner {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

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
