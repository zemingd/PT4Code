package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var n, m int

func getint(scanner *bufio.Scanner) int {
	if scanner.Scan() {
		i, _ := strconv.Atoi(scanner.Text())
		return i
	}
	return 0
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	n = getint(scanner)
	m = getint(scanner)

	que := make([][]int, n+1)

	for i := 0; i < n; i++ {
		a := getint(scanner)
		b := getint(scanner)
		if len(que) <= b {
			q2 := make([][]int, b+1)
			copy(q2, que)
			que = q2
		}
		if que[b] == nil {
			que[b] = []int{a}
		} else {
			que[b] = append(que[b], a)
		}
	}
	sum := 0
	fix := 0
	cal := make([]bool, m+1)

L1:
	for pay := len(que) - 1; 0 <= pay; pay-- {
		if que[pay] == nil {
			continue
		}
		sort.Ints(que[pay])
		//fmt.Println("pay", pay, "day", que[pay])
		for index := len(que[pay]) - 1; 0 <= index; index-- {
			for day := m - que[pay][index]; 0 <= day; day-- {
				if !cal[day] {
					sum += pay
					cal[day] = true
					fix += 1
					//fmt.Println(sum, cal)
					if fix >= m {
						break L1
					}
					break
				}
			}
		}
	}
	fmt.Println(sum)
}
