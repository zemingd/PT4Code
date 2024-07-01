package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	// Get a number from stdio and convert it
	sc.Scan()

	_, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}

	// Get some numbers from stdio and convert it
	sc.Scan()
	numString := strings.Split(sc.Text(), " ")

	nums := make([]int32, len(numString))
	var err error

	for i := 0; i < len(nums); i++ {
		nums[i], err = strconv.Atoi(numString[i])
		if err != nil {
			panic(e)
		}
	}

	if check(nums) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func check(nums []int32) bool {
	var tmp int
	var flag bool
	for i, num := range nums {
		fmt.Println(reflect.TypeOf(num))
		if i == 0 {
			tmp = num
			continue
		} else {
			if tmp <= num {
				tmp = num
				flag = false
				continue
			} else if tmp-1 == num {
				if flag {
					return false
				}
				tmp = num
				flag = true
				continue
			} else {
				return false
			}
		}
	}
	return true
}