package main

import "fmt"

func solve(str []string) ([]string, bool) {
	var result []string
	for i := 0; i < len(str)-1; i++ {
		if str[i] == "0" && str[i+1] == "1" {
			result = append(str[:i], str[i+2:]...)
			return result, false
		}
	}
	return nil, true
}

func main() {
	var S string
	var s []string
	fmt.Scan(&S)

	for _, c := range S {
		s = append(s, string([]rune{c}))
	}

	var flg bool
	var cnt int
	for !flg {
		if len(s) == 0 || len(s) == 1 {
			flg = true
			break
		}
		s, flg = solve(s)
		cnt++
	}

	fmt.Print(cnt * 2)

}
