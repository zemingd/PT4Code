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
	queue := make([][]int, 0)
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
			queue = append(queue, []int{
				y, x, 0,
			})
		}
	}

	dy := [4]int{-1, 0, 0, 1}
	dx := [4]int{0, -1, 1, 0}
	ans := -1
	for len(queue) > 0 {
		p := queue[0]
		queue = queue[1:]
		ans = p[2]
		for i := 0; i < 4; i++ {
			if p[0]+dy[i] < 0 || p[0]+dy[i] >= r {
				continue
			}
			if p[1]+dx[i] < 0 || p[1]+dx[i] >= c {
				continue
			}
			if maze[p[0]+dy[i]][p[1]+dx[i]] == '#' {
				continue
			}
			if steps[p[0]+dy[i]][p[1]+dx[i]] > 0 {
				continue
			}
			steps[p[0]+dy[i]][p[1]+dx[i]] = 1
			queue = append(queue, []int{
				p[0] + dy[i],
				p[1] + dx[i],
				p[2] + 1,
			})
		}
	}

	fmt.Fprintln(writer, ans)

	writer.Flush()
}
