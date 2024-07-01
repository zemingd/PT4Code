package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	n := getInt()

	candidate := [4]int{0, 3, 5, 7}
	count := 0
L:
	for _, c1 := range candidate {
		for _, c2 := range candidate {
			for _, c3 := range candidate {
				for _, c4 := range candidate {
					for _, c5 := range candidate {
						for _, c6 := range candidate {
							for _, c7 := range candidate {
								for _, c8 := range candidate {
									for _, c9 := range candidate {
										for _, c10 := range candidate {
											numsOf753 := [10]int{c1, c2, c3, c4, c5, c6, c7, c8, c9, c10}
											flags := map[int]bool{3: false, 5: false, 7: false}
											for _, v := range numsOf753 {
												flags[v] = true
											}
											if !flags[3] || !flags[5] || !flags[7] {
												continue
											}
											flag := true
											for i := 1; i < 10; i++ {
												if numsOf753[i] == 0 && numsOf753[i-1] != 0 {
													flag = false
													break
												}
											}
											if !flag {
												continue
											}

											x := 0
											for i, v := range numsOf753 {
												x += v * pow(10, 10-i-1)
											}
											if x > n {
												break L
											}

											count++
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	fmt.Println(count)
}

func pow(a, b int) int {
	x := float64(a)
	y := float64(b)
	return int(math.Pow(x, y))
}

// -----------------------------------------

var scanner = wordScanner()

func wordScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}

func getInt() int {
	scanner.Scan()
	i, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getIntSlice(n int) []int {
	is := make([]int, n)
	for i := range is {
		is[i] = getInt()
	}
	return is
}

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}
