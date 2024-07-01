// https://atcoder.jp/contests/abc119/tasks/abc119_a
// A - Still TBD

package main

import "fmt"

func main() {
	var y, m, d int
	fmt.Scanf("%d/%d/%d", &y, &m, &d)
	if y > 2019 || (y == 2019 && m > 4) {
		fmt.Println("TBD")
	} else {
		fmt.Println("Heisei")
	}
}
