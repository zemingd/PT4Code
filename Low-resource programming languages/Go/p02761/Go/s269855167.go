package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var sc [5][2]int
	var n, m int
	var ans [3]int
	//var ans1 [3]int
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

	var l3 []int
	var l2 []int
	var l1 []int
	for _, k := range sc {
		if k[0] == 3 {
			l3 = append(l3, k[1])
		}
		if k[0] == 2 {
			l2 = append(l2, k[1])
		}
		if k[0] == 1 {
			l1 = append(l1, k[1])
		}
		if k[1] < 0 {
			fmt.Println("-1")
			return
		}
		if k[1] >= 10 {
			fmt.Println("-1")
			return
		}
	}

	hoge1 := removeDuplicate1(l3)
	if len(hoge1) > 1 {
		fmt.Println("-1")
		return
	}
	sort.Sort(sort.IntSlice(hoge1))
	if len(hoge1) < 1 {
		hoge1 = append(hoge1, 0)
	}

	hoge2 := removeDuplicate1(l2)
	if len(hoge2) > 1 {
		fmt.Println("-1")
		return
	}
	sort.Sort(sort.IntSlice(hoge2))
	if len(hoge2) < 1 {
		hoge2 = append(hoge2, 0)
	}

	hoge := removeDuplicate1(l1)
	if len(hoge) > 1 {
		fmt.Println("-1")
		return
	}
	sort.Sort(sort.IntSlice(hoge))
	if len(hoge) < 1 {
		hoge = append(hoge, 0)
	}

	if n == 3 {
		ans[2] = hoge[0] * 100
		ans[1] = hoge2[0] * 10
		ans[0] = hoge1[0]
	}

	if n == 2 {
		ans[1] = hoge2[0] * 10
		ans[0] = hoge1[0]
	}

	if n == 1 {
		ans[0] = hoge1[0]
	}

	if n == 3 {
		if ans[2] == 0 {
			fmt.Println("-1")
			return
		}
		fmt.Println(ans[2] + ans[1] + ans[0])
		return
	}
	if n == 2 {
		if ans[1] == 0 {
			fmt.Println("-1")
			return
		}
		fmt.Println(ans[1] + ans[0])
		return
	}
	if n == 1 {
		fmt.Println(ans[0])
		return
	}
}

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
