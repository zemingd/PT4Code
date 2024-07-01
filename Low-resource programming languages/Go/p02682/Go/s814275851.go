package main

import (
	"fmt"
)

func main() {
	var a, b, c, k, ans int
	fmt.Scan(&a, &b, &c, &k)

	hoge := k - a
	if hoge >= 0 {
		ans += a * 1
	} else {
		ans += k * 1
	}
	huga := hoge - b
	if huga >= 0 {
		ans += b * 0
	} else {
		ans += hoge * 0
	}
	piyo := huga - c
	if piyo >= 0 {
		ans += c * -1
	} else {
		ans += huga * -1
	}
	fmt.Println(ans)
}
