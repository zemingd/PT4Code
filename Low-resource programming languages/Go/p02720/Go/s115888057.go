package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func judge(str []int) (int, bool) {
	i := len(str) - 1
	for ; i > 0; i-- {
		if (str[i] == str[i-1] || str[i] == str[i-1]-1) && str[i] < 9 {
			return i, true
		}
	}
	return len(str), false
}

func solve() {
	k := scanInt()
	var ans []int = nil
	ans = append(ans, 1)
	for i := 1; i < k; i++ {
		if i < 9 {
			ans[0]++
			continue
		}
		index, jud := judge(ans)
		if jud == true {
			ans[index]++
			for j := index + 1; j < len(ans); j++ {
				if ans[j-1] >= 1 {
					ans[j] = ans[j-1] - 1
				} else {
					ans[j] = 0
				}
			}
			continue
		} else if ans[0] < 9 {
			ans[0] += 1
			for j := 1; j < index; j++ {
				if ans[j-1] >= 1 {
					ans[j] = ans[j-1] - 1
				} else {
					ans[j] = 0
				}
			}
			continue
		} else {
			ans = make([]int, index+1)
			ans[0] = 1
			continue
		}
	}
	var answer int64
	answer = 0
	// fmt.Println(ans)
	for i, num := range ans {
		answer += int64(pow(10, len(ans)-i-1) * num)
	}
	fmt.Println(answer)
}

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}
func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}

func pow(n int, m int) int {
	ans := 1
	for i := 0; i < m; i++ {
		ans *= n
	}
	return ans
}

func main() {
	sc.Split(bufio.ScanWords)
	solve()
}
