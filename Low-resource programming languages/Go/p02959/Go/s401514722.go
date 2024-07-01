package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	// 倒せないモンスターはどうやって考える？
	//　i番目の勇者でi+1番目のモンスターを倒すことのできる数をcntとする
	as := make([]int, n+1)
	for i := range as {
		fmt.Scan(&as[i])
	}
	bs := make([]int, n)
	for i := range bs {
		fmt.Scan(&bs[i])
	}
	var cnt, ans int
	for i := 0; i < n; i++ {
		if cnt == as[i] {
			ans += cnt
			cnt = 0
		} else if cnt < as[i] && as[i]-cnt < bs[i] {
			ans += as[i]
			if bs[i]-(as[i]-cnt) >= as[i+1] {
				cnt = as[i+1]
			} else {
				cnt = bs[i] - (as[i] - cnt)
			}
		} else {
			ans += bs[i]
			cnt = 0
		}
	}
	if cnt == as[n] {
		ans += cnt
	} else if cnt < as[n] && as[n]-cnt >= bs[n-1] {
		ans += bs[n-1]
	} else if cnt < as[n] && as[n]-cnt < bs[n-1] {
		ans += as[n] - cnt
	}
	fmt.Println(ans)
}