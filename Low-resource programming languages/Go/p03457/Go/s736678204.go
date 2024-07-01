package main

import (
	"fmt"
	"math"
)

// 1. 現在地から次の目的地までの距離を測る
// 	a. 間に合わない
// 		NO
// 	b. ピッタリ
// 		YES
// 	c. 余裕がある
// 		i. 必要な歩数 + 偶数
// 			YES
// 		ii. 必要な歩数 + 奇数
// 			NO

type Coordinate struct {
	x, y int
}

func getDistance(c0, c1 Coordinate) int {
	d := math.Abs(float64(c1.x - c0.x)) + math.Abs(float64(c1.y - c0.y))
	return int(d)
}

func canTravel(t, d int) (res bool) {
	if dif := t-d; dif < 0 {
		res = false
	} else if dif == 0 {
		res = true
	} else if dif > 0 {
		if dif % 2 == 0 {
			res = true
		} else {
			res = false
		}
	}
	return
}

func main() {
	var n, t0, t1 int
	var c0, c1 Coordinate

	c0 = Coordinate{0, 0}
	fmt.Scan(&n, &t1, &c1.x, &c1.y)

	for i := 0; i < n-1; i++ {
		if canTravel(t1-t0, getDistance(c0, c1)) {
			t0 = t1
			c0 = c1
			fmt.Scan(&t1, &c1.x, &c1.y)
		} else {
			fmt.Println("No")
			return
		}
	}

	fmt.Println("Yes")
	return
}