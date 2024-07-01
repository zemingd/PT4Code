package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var n, m int
	if sc.Scan() {
		nm := splitToInt(sc.Text())
		n = nm[0]
		m = nm[1]
	}

	rcnt := 0
	scArr := make([][]int, n)

	for rcnt < m {
		if sc.Scan() {
			scArr[rcnt] = splitToInt(sc.Text())
			rcnt++
		}
	}

	ans := []int{}
	if n == 1 {
		// 0~99
		for i := 0; i < 100; i++ {
			strI := strconv.Itoa(i)

			for _, scV := range scArr {
				if string(strI[scV[0]-1]) == strconv.Itoa(scV[1]) {
					goto Next1
				}
			}
			ans = append(ans, i)
		Next1:
		}
	}

	if n == 2 {
		// 10~99
		for i := 10; i < 100; i++ {
			strI := strconv.Itoa(i)

			for _, scV := range scArr {
				if string(strI[scV[0]-1]) != strconv.Itoa(scV[1]) {
					goto Next2
				}
			}
			ans = append(ans, i)
		Next2:
		}
	}

	if n == 3 {
		// 100~999
		for i := 100; i < 1000; i++ {
			strI := strconv.Itoa(i)

			for _, scV := range scArr {
				if string(strI[scV[0]-1]) != strconv.Itoa(scV[1]) {
					goto Next3
				}
			}
			ans = append(ans, i)
		Next3:
		}
	}

	if len(ans) == 0 {
		fmt.Print("-1")
		return
	}

	sort.Ints(ans)
	fmt.Print(ans[0])
}

func splitToInt(s string) (intArr []int) {
	arr := strings.Split(s, " ")

	for _, v := range arr {
		intV, _ := strconv.Atoi(v)
		intArr = append(intArr, intV)
	}
	return
}