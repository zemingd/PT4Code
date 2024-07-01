package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var sc [5][2]int
	var n, m int
	var ans [3]int
	fmt.Fscan(r, &n)

	if n < 1 {
		fmt.Println("-1")
		return
	}
	if m < 0 {
		fmt.Println("-1")
		return
	}
	if m > 5 {
		fmt.Println("-1")
		return
	}
	fmt.Fscan(r, &m)
	for i := 0; i < m; i++ {
		fmt.Fscan(r, &sc[i][0], &sc[i][1])
	}
	if n > 3 {
		fmt.Println("-1")
		return
	}

	for _, k := range sc {
		var l3 []int
		var l2 []int
		var l1 []int
		if k[0] == 3 {
			l3 = append(l3, k[1])
		}
		if k[0] == 2 {
			l3 = append(l2, k[1])
		}
		if k[0] == 1 {
			l3 = append(l1, k[1])
		}
		if k[1] <= 0 {
			fmt.Println("-1")
			return
		}
		if k[1] > 10 {
			fmt.Println("-1")
			return
		}
		if len(l3) > 1 {
			hoge := removeDuplicate1(l3)
			if len(hoge) > 1 {
				fmt.Println("-1")
				return
			}
		}
		if len(l2) > 1 {
			hoge := removeDuplicate1(l2)
			if len(hoge) > 1 {
				fmt.Println("-1")
				return
			}
		}
		if len(l1) > 1 {
			hoge := removeDuplicate1(l1)
			if len(hoge) > 1 {
				fmt.Println("-1")
				return
			}
		}
	}

	if n == 3 {
		for i := 0; i < m; i++ {
			if sc[i][0] == 1 {
				fmt.Println(sc[i][1])
				ans[2] = sc[i][1] * 100
				errCount++
			}
			if sc[i][0] == 2 {
				ans[1] = sc[i][1] * 10
				errCount++
			}
			if sc[i][0] == 3 {
				ans[1] = sc[i][1]
				errCount++
			}
		}
	}

	if n == 2 {
		for i := 0; i < m; i++ {
			if sc[i][0] == 1 {
				ans[1] = sc[i][1] * 10
				errCount++
			}
			if sc[i][0] == 2 {
				ans[1] = sc[i][1]
				errCount++
			}
		}
	}

	if n == 1 {
		for i := 0; i < m; i++ {
			if sc[i][0] == 1 {
				ans[1] = sc[i][1]
				errCount++
			}
		}
	}

	if n == 3 {
		fmt.Println(ans[2] + ans[1] + ans[0])
		return
	}
	if n == 2 {
		fmt.Println(ans[1] + ans[0])
		return
	}
	if n == 1 {
		fmt.Println(ans[0])
		return
	}
}

// 重複した要素を削除して返却
func removeDuplicate1(args []int) []int {
	results := make([]int, 0, len(args))
	encountered := map[int]bool{}
	for i := 0; i < len(args); i++ {
		if !encountered[args[i]] {
			encountered[args[i]] = true
			results = append(results, args[i])
		}
	}
	return results
}
