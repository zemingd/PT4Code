package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func splitInt(str string, sep string) (nums []int) {
	sp := strings.Split(str, sep)
	nums = make([]int, len(sp))
	for i, s := range sp {
		n, _ := strconv.Atoi(s)
		nums[i] = n
	}
	return
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()

	nm := splitInt(sc.Text(), " ")

	sorted := make([][]int, 0, nm[0])
	for i := 0; i < nm[0]; i++ {
		sc.Scan()
		nums := splitInt(sc.Text(), " ")

		if i == 0 {
			sorted = append(sorted, nums)
		} else {
			for j, v := range sorted {
				if v[0] >= nums[0] {
					if j == 0 {
						sorted = append([][]int{nums}, sorted[0:]...)
					} else {
						sorted = append(sorted[:j], sorted[j-1:]...)
						sorted[j] = nums
					}
					break
				}

				if j == len(sorted)-1 {
					sorted = append(sorted, nums)
				}
			}
		}
	}

	total := 0
	for _, v := range sorted {
		total += v[1]
		if total >= nm[1] {
			fmt.Println(v[0])
			return
		}
	}
}