package main

import (
	"errors"
	"fmt"
)

func last_equal(a []string, i string) bool {
	if len(a) == 0 {
		return false
	}
	return a[len(a)-1:][0] == i
}

func count(s string, data []string) (int, error) {
	length := len(s)
	if length == 1 {
		if last_equal(data, s) {
			return 0, errors.New("分割に問題あり")
		}
		// result := append(data, s)
		// if len(result) >= 12 {
		// 	fmt.Println(result)
		// }
		return 1, nil
	}

	// 最小値で初期化
	max_count := 0
	// var tmp_str string
	// var tmp_working_data []string
	i := 0
	for {
		i++
		if i == length {
			break
		}
		first := s[:i]
		second := s[i:]

		// fmt.Println("data:", data)
		// fmt.Println("first:", first)
		// fmt.Println("second:", second)
		// fmt.Println()

		// 分割に問題があればskip
		if last_equal(data, first) {
			// fmt.Println(data)
			// fmt.Println(first)
			continue
		}

		working_data := append(data, first)
		c, err := count(second, working_data)
		if err != nil {
			continue
		}
		max_count = c
		break
	}

	return (max_count + 1), nil
}

func main() {
	var s string
	fmt.Scan(&s)
	data := []string{}
	c, _ := count(s, data)

	fmt.Println(c)
}
