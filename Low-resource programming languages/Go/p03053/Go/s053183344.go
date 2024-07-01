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
	maze := make([][]byte, r)
	steps := make([][]int, r)
	n := r * c
	queue := make([][]int, n)
	ql := 0
	qr := 0
	for y := 0; y < r; y++ {
		maze[y] = make([]byte, c)
		steps[y] = make([]int, c)
		s := getNextString(scanner)
		for x := 0; x < c; x++ {
			maze[y][x] = s[x]
			if s[x] == '.' {
				continue
			}
			steps[y][x] = 1
			queue[qr] = []int{
				y, x, 0,
			}
			qr++
		}
	}

	dy := [4]int{-1, 0, 0, 1}
	dx := [4]int{0, -1, 1, 0}
	ans := -1
	for qr-ql > 0 {
		p := queue[ql]
		ql++
		ans = p[2]
		for i := 0; i < 4; i++ {
			yy := p[0] + dy[i]
			xx := p[1] + dx[i]
			if yy < 0 || yy >= r {
				continue
			}
			if xx < 0 || xx >= c {
				continue
			}
			if maze[yy][xx] == '#' {
				continue
			}
			if steps[yy][xx] > 0 {
				continue
			}
			steps[yy][xx] = 1
			queue[qr%n] = []int{
				yy,
				xx,
				p[2] + 1,
			}
			qr++
		}
	}

	fmt.Fprintln(writer, ans)

	writer.Flush()
}
