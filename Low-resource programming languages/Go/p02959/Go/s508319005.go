package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"strconv"
	"strings"
)

func parseInt(s string) int {
	i, _ := strconv.Atoi(s)
	return i
}

func createNums(ary string) (nums []int) {
	for _, v := range strings.Split(ary, " ") {
		nums = append(nums, parseInt(v))
	}
	return
}

func main() {
	n := bufio.NewScanner(os.Stdin)
	n.Scan()

	n.Scan()
	numsA := createNums(n.Text())
	fmt.Println(reflect.TypeOf(numsA))

	n.Scan()
	numsB := createNums(n.Text())
	fmt.Println(reflect.TypeOf(numsA))

	var answer int
	for k, v := range numsB {
		if numsA[k] >= v {
			numsA[k] -= v
			answer += v
		} else {
			v -= numsA[k]
			answer += numsA[k]
			numsA[k] = 0
			if numsA[k+1] <= v {
				answer += numsA[k+1]
				numsA[k+1] = 0
			} else {
				numsA[k+1] -= v
				answer += v
			}
		}
	}
	fmt.Println(answer)
}
