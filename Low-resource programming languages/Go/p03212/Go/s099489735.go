package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

var stdin = bufio.NewScanner(os.Stdin)

func nextInt() int {
	_ = stdin.Scan()
	s, err := strconv.Atoi(stdin.Text())
	if err != nil {
		log.Fatal(err)
	}
	return s
}

func deterNum(num int) bool {
	rec := make(map[int]bool)
	for {
		if num >= 10 {

			x := num % 10
			num = num / 10
			if x == 3 || x == 5 || x == 7 {
				rec[x] = true
				continue
			} else {
				return false
			}
		} else {
			if num == 3 || num == 5 || num == 7 {
				rec[num] = true
				break
			} else {
				return false
			}
		}
	}
	// fmt.Println(rec)
	// fmt.Println(rec[3])
	if rec[3] == true && rec[5] == true && rec[7] == true {
		return true
	} else {
		return false
	}
}

// find 3,5,7-numbers from
func findNum(s []int) []int {
	var answer []int
	// fmt.Println(len(s))
	for _, ts := range s {
		// fmt.Printf("%d ", ts)
		flag := deterNum(ts)
		if flag {
			answer = append(answer, ts)
		}
	}
	return answer
}
func main() {
	n := nextInt()
	var numbers []int
	if n >= 357 {
		for i := n; i >= 357; i-- {
			// fmt.Printf("%d ", i)
			numbers = append(numbers, i)
		}
		// fmt.Printf("\n%v\n", numbers)
		// fmt.Println(len(numbers))
		ans := findNum(numbers)
		count := len(ans)
		fmt.Println(count)
	}
}
