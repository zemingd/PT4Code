package main

import (
	"fmt"
)

type city struct {
	cityID   int
	visitNum int
	traffic  int
}

func main() {
	var n, a, b, c, d, e int
	fmt.Scan(&n, &a, &b, &c, &d, &e)

	mapCity := []city{
		{cityID: 1, visitNum: n, traffic: a},
		{cityID: 2, visitNum: 0, traffic: b},
		{cityID: 3, visitNum: 0, traffic: c},
		{cityID: 4, visitNum: 0, traffic: d},
		{cityID: 5, visitNum: 0, traffic: e},
		{cityID: 6, visitNum: 0, traffic: 0},
	}

	result := 0
	for true {
		if mapCity[0].visitNum > 0 {
			tmp := mapCity[0].visitNum
			if mapCity[0].visitNum > a {
				tmp = a
			}
			mapCity[0].visitNum -= tmp
			mapCity[1].visitNum += tmp
			result++
		}

		if mapCity[1].visitNum > 0 {
			tmp := mapCity[1].visitNum
			if mapCity[1].visitNum > a {
				tmp = a
			}
			mapCity[1].visitNum -= tmp
			mapCity[2].visitNum += tmp
			result++
		}

		if mapCity[2].visitNum > 0 {
			tmp := mapCity[2].visitNum
			if mapCity[2].visitNum > a {
				tmp = a
			}
			mapCity[2].visitNum -= tmp
			mapCity[3].visitNum += tmp
			result++
		}

		if mapCity[3].visitNum > 0 {
			tmp := mapCity[3].visitNum
			if mapCity[3].visitNum > a {
				tmp = a
			}
			mapCity[3].visitNum -= tmp
			mapCity[4].visitNum += tmp
			result++
		}

		if mapCity[4].visitNum > 0 {
			tmp := mapCity[4].visitNum
			if mapCity[4].visitNum > a {
				tmp = a
			}
			mapCity[4].visitNum -= tmp
			mapCity[5].visitNum += tmp
			result++
		}

		if mapCity[5].visitNum == n {
			break
		}
	}

	fmt.Print(result)
}
