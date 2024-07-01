package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

//func answer(a []int64, i int) bool {
//	if i < 0 {
//		return true
//	}
//
//	d := a[i+1] - a[i]
//
//	if d >= 0 {
//		return answer(a, i-1)
//	} else if d <= -2 {
//		return false
//	}
//
//	a[i] -= 1
//	return answer(a, i-1)
//}
//
//
func answer2(a []int64) bool {
	prev := a[0]
	for i := 1; i < len(a); i++ {
		fmt.Printf("i,num,cnt %d %d %d\n", i, a[i], prev)
		if prev > a[i] {
			if prev > a[i]+1 {
				return false
			}
		} else {
			prev = a[i]
		}
	}
	return true
}
//func answer3(a []int64) bool {
//	for i := len(a) - 2; i >= 0; i-- {
//		d := a[i+1] - a[i]
//		if d <= -2 {
//			return false;
//		} else if d == -1 {
//			a[i] -= 1
//		}
//	}
//	return true
//}

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	scanner.Scan();
	N, _ := strconv.ParseInt(scanner.Text(), 10, 0);
	scanner.Scan();
	text := scanner.Text();
	str := strings.Split(text, " ");
	array := make([]int64, N)
	for i := 0; i < len(str); i += 1 {
		array[i], _ = strconv.ParseInt(str[i], 10, 0)
	}

	if answer2(array) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

