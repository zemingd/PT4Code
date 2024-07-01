package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	S := nextLine()
	len := len(S)
	numbers := []int{753}
	for i := 0; i < len-2; i++ {
		num, _ := strconv.Atoi(S[i : i+3])
		if num == 753 {
			fmt.Println(0)
			return
		}
		numbers = append(numbers, num)
	}
	sort.Ints(numbers)
	for i, num := range numbers {
		if num != 753 {
			continue
		}
		if i == 0 {
			fmt.Println(numbers[i+1] - 753)
			return
		} else if i == len-2 {
			fmt.Println(753 - numbers[i-1])
			return
		} else {
			prevDiff := 753 - numbers[i-1]
			nextDiff := numbers[i+1] - 753
			if prevDiff < nextDiff {
				fmt.Println(prevDiff)
				return
			} else {
				fmt.Println(nextDiff)
				return
			}
		}
	}
}
