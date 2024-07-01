package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	ar := make([][]int, 26)
	for i, v := range s {
		ar[v-'a'] = append(ar[v-'a'], i+1)
	}
	for _, v := range t {
		if len(ar[v-'a']) == 0 {
			fmt.Println(-1)
			return
		}
	}
	dp := make([][]int, len(s)+1)
	dp[len(s)] = make([]int, 26)
	for i := 0; i < 26; i++ {
		dp[len(s)][i] = -1
	}
	for i := len(s) - 1; i >= 0; i-- {
		dp[i] = make([]int, 26)
		for j := 0; j < 26; j++ {
			if s[i]-'a' == byte(j) {
				dp[i][j] = i
			} else {
				dp[i][j] = dp[i+1][j]
			}
		}
	}
	sum := 0
	now := -1
	for _, v := range t {
		if now = dp[now+1][v-'a']; now != -1 {
			continue
		}
		sum++
		now = dp[0][v-'a']
	}
	fmt.Println(sum*len(s) + now + 1)
}
