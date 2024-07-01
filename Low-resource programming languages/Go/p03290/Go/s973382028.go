package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func getNextLine(scanner *bufio.Reader) string {
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

func getIntList(scanner *bufio.Reader) []int {
	list := strings.Split(getNextLine(scanner), " ")
	l := len(list)
	result := make([]int, l)
	for i := 0; i < l; i++ {
		result[i], _ = strconv.Atoi(list[i])
	}
	return result
}

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := bufio.NewReader(fp)

	var d, g int

	fmt.Sscan(getNextLine(scanner), &d, &g)
	g /= 100
	ppp := make([]int, d)
	ccc := make([]int, d)

	for i := 0; i < d; i++ {
		pc := getIntList(scanner)
		ppp[i] = pc[0]
		ccc[i] = pc[1] / 100
	}
	min := 1000
	for p := 0; p < 1<<uint(d); p++ {
		score := 0
		ans := 0
		masks := make([]int, d)
		for mask := 0; mask < d; mask++ {
			masks[mask] = p >> uint(mask) & 1
			if masks[mask] == 1 {
				ans += ppp[mask]
				score += ccc[mask] + ppp[mask]*(mask+1)
			}
		}
		for mask := d - 1; mask >= 0 && score < g; mask-- {
			if masks[mask] == 1 {
				continue
			}
			for ii := 0; ii < ppp[mask] && score < g; ii++ {
				ans++
				score += mask + 1
				if ii+1 == ppp[mask] {
					score += ccc[mask]
				}
			}
		}
		if min > ans {
			min = ans
		}
	}
	fmt.Println(min)
}
