package main

import "fmt"

func OddJudge(num int) bool {
	if num%2 == 0 {
		return true
	} else {
		return false
	}
}
func fn(num int) {
	if OddJudge(num) {
		num = num / 2
		fn(num)
	} else {
		num = 3*num + 1
		fn(num)
	}
}
func main() {
	var s int
	fmt.Scanf("%d\n", &s)

	rep := make([]int, 1)
	rep[0] = s

A:
	for {
		if OddJudge(rep[len(rep)-1]) {
			tempValue := rep[len(rep)-1] / 2
			for _, v := range rep {
				if v == tempValue {
					break A
				}
			}
			rep = append(rep, rep[len(rep)-1]/2)
		} else {
			tempValue := 3*rep[len(rep)-1] + 1
			for _, v := range rep {
				if v == tempValue {
					break A
				}
			}
			rep = append(rep, tempValue)
		}
	}
	fmt.Println(len(rep) + 1)
}