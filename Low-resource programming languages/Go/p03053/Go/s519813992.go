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

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := getScanner(fp)

	writer := bufio.NewWriter(os.Stdout)

	r := getNextInt(scanner)
	c := getNextInt(scanner)
	n := r * c
	maze := make([]byte, n)
	steps := make([]int, n)
	queue := make([][2]int, n)
	ql := 0
	qr := 0
	for y := 0; y < r; y++ {
		s := getNextString(scanner)
		for x := 0; x < c; x++ {
			i := y*c + x
			maze[i] = s[x]
			if s[x] == '.' {
				continue
			}
			steps[i] = 1
			queue[qr][0] = i
			queue[qr][1] = 0
			qr++
		}
	}

	d := [4]int{-c, -1, 1, c}
	ans := -1
	for qr-ql > 0 {
		p := queue[ql]
		ql++
		ans = p[1]
		for i := 0; i < 4; i++ {
			ii := p[0] + d[i]
			if ii < 0 || ii >= n {
				continue
			}
			if d[i] > 0 && ii%c == 0 {
				continue
			}
			if d[i] < 0 && p[0]%c == 0 {
				continue
			}
			if maze[ii] == '#' {
				continue
			}
			if steps[ii] > 0 {
				continue
			}
			steps[ii] = 1
			queue[qr%n][0] = ii
			queue[qr%n][1] = p[1] + 1
			qr++
		}
	}

	fmt.Fprintln(writer, ans)

	writer.Flush()
}
