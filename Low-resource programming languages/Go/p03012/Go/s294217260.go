package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	stdin.Scan()
	n_s := stdin.Text()
	stdin.Scan()
	ws_s := strings.Split(stdin.Text(), " ")
	ws := []int{}
	for _, d := range ws_s {
		i, _ := strconv.Atoi(d)
		ws = append(ws, i)
	}
	n, _ := strconv.Atoi(n_s)
	out := Run(ws, n)
	fmt.Println(out)
}
func Run(data []int, n int) string {
	t := ceil(n, 2)
	fmt.Println(search(data, t))
	return ""
}
func ceil(i, j int) int {
	return int(math.Ceil(float64(i) / float64(j)))
}
func sum(ints []int) int {
	if len(ints) == 0 {
		return 0
	}
	if len(ints) > 1 {
		return ints[0] + sum(ints[1:])
	}
	return ints[0]
}
func search(data []int, t int) int {
	a, b, c := t, ceil(t, 2), t+ceil(len(data[t:]), 2)
	ans := []int{
		int(math.Abs(float64(sum(data[:a]) - sum(data[a:])))),
		int(math.Abs(float64(sum(data[:b]) - sum(data[b:])))),
		int(math.Abs(float64(sum(data[:c]) - sum(data[c:])))),
	}
	//search(data, a - c) search(data, a + c)
	var s func(ans []int, a, b, c int) int
	s = func(ans []int, a, b, c int) int {
		if ans[0] <= ans[1] && ans[0] <= ans[2] {
			if 1 < a-b && a+b < len(data) {
				ans[1], ans[2] = search(data, a-b), search(data, a+b)
				sa := s(ans, a, a-b, a+b)
				if sa < ans[0] {
					return sa
				}
			}
			return ans[0]
		} else if ans[1] <= ans[2] {
			return search(data, b)
		}
		return search(data, c)
	}
	return s(ans, a, b, c)
}