package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func getNextLine(fp *os.File) string {
	scanner := bufio.NewReader(fp)
	var buffer string
	for {
		line, isPrefix, _ := scanner.ReadLine()
		buffer += string(line)
		if isPrefix == false {
			break
		}
	}
	return buffer
}

func getNextWord(scanner *bufio.Scanner) string {
	scanner.Scan()
	return scanner.Text()
}

func getNextInt(scanner *bufio.Scanner) int {
	i, _ := strconv.Atoi(getNextWord(scanner))
	return i
}

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := bufio.NewScanner(fp)
	scanner.Split(bufio.ScanWords)
	writer := bufio.NewWriter(os.Stdout)

	h := getNextInt(scanner)
	w := getNextInt(scanner)
	ss := make([]string, h)
	for i := 0; i < h; i++ {
		ss[i] = getNextWord(scanner)
	}
	left := make([][]int, h)
	right := make([][]int, h)
	for i := 0; i < h; i++ {
		left[i] = make([]int, w+2)
		right[i] = make([]int, w+2)
		for x := 0; x < w; x++ {
			if ss[i][x] == '.' {
				left[i][x+1] = left[i][x] + 1
			} else {
				left[i][x+1] = 0
			}
			if ss[i][w-x-1] == '.' {
				right[i][w-x] = right[i][w-x+1] + 1
			} else {
				right[i][w-x-1] = 0
			}
		}
	}

	up := make([][]int, w)
	down := make([][]int, w)
	for i := 0; i < w; i++ {
		up[i] = make([]int, h+2)
		down[i] = make([]int, h+2)
		for y := 0; y < h; y++ {
			if ss[y][i] == '.' {
				up[i][y+1] = up[i][y] + 1
			} else {
				up[i][y+1] = 0
			}
			if ss[h-y-1][i] == '.' {
				down[i][h-y] = down[i][h-y+1] + 1
			} else {
				down[i][h-y-1] = 0
			}
		}
	}

	max := 0
	for y := 0; y < h; y++ {
		for x := 0; x < w; x++ {
			if ss[y][x] == '#' {
				continue
			}
			sum := left[y][x+1] + right[y][x+1] + up[x][y+1] + down[x][y+1] - 3
			if max < sum {
				max = sum
			}
		}
	}

	fmt.Fprintln(writer, max)

	writer.Flush()
}
