package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, h, m float64
	fmt.Scan(&a, &b, &h, &m)

	pi := math.Acos(-1)

	// 角度を求める
	th := (h*60+m)/720 * 2*pi //時針
	//tm := m/60 * 2*pi  //分針
	tm := (h*60+m)/60 * 2*pi  //分針

	xh := a*math.Cos(th) //時針差表
	yh := a*math.Sin(th)

	xm := b*math.Cos(tm) //時針差表
	ym := b*math.Sin(tm)

	dx := xh - xm
	dy := yh - ym
	fmt.Println(math.Sqrt(dx*dx + dy*dy))

}
