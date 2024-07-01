package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	ss := make([]string, n)
	for i := range ss {
		fmt.Scan(&ss[i])
	}
	cnt := 0
	// 何番目の文字列を基準とするかを決める
	for i := 0; i < n-1; i++ {
		//その基準以降の文字列と順次比較していく
		for j := i + 1; j < n; j++ {
			//基準値と比較対象をソート
			if SortString(ss[i]) == SortString(ss[j]) {
				cnt++
			}
		}
	}
	fmt.Println(cnt)
}
func SortString(w string) string {
	s := strings.Split(w, "")
	sort.Strings(s)
	return strings.Join(s, "")
}
