package abc173

import "fmt"

func judgeStatusSummary(s []string) map[string]int {
	c := map[string]int{
		"AC": 0,
		"WA": 0,
		"TLE": 0,
		"RE": 0,
	}

	for _, v := range s {
		c[v]++
	}

	return c
}

func main() {
	var n int
	fmt.Scan(&n)
	s := make([]string, n)
	for i := range s {
		fmt.Scan(&s[i])
	}

	ans := judgeStatusSummary(s)
	fmt.Println(fmt.Sprintf("AC x %v", ans["AC"]))
	fmt.Println(fmt.Sprintf("WA x %v", ans["WA"]))
	fmt.Println(fmt.Sprintf("TLE x %v", ans["TLE"]))
	fmt.Println(fmt.Sprintf("RE x %v", ans["RE"]))
}