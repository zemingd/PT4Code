// きりみんちゃんの配信からきました
// 答えは2種類ぽくなりそう（いまみてるのが全体の中央値以外なら中央値になるし、そうじゃない==中央値自身ならばひとつずれる）

package main

import (
	"fmt"
	"sort"
)

var n int
var x []int

func main() {
	fmt.Scan(&n)
	x = make([]int, n)
	for i := 0; i < n; i++ {
		var j int
		fmt.Scan(&j)
		x[i] = j
	}
	tmp := append([]int{}, x...)
	sort.Ints(tmp)
	one, two := tmp[n/2-1], tmp[n/2]
	for i := 0; i < n; i++ {
		if x[i] <= one {
			fmt.Println(two)
		} else {
			fmt.Println(one)
		}
	}
}
