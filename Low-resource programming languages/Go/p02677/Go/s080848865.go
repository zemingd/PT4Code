package main

import (
	"fmt"
	"math"
)

func main(){
	var a,b,h,m int
	var m_val,h_val,val,c2 float64
	fmt.Scan(&a,&b,&h,&m)
	m_val = float64(6*m)
	h_val = float64(float64(30*h) + float64(float64(m)*float64(0.5)))
//fmt.Println(h_val,m_val)
	if h_val < m_val {
		if m_val - h_val <= 180 {
			val = m_val - h_val
		} else {
			val = 360 - m_val + h_val
		}
	} else {
		if h_val - m_val <= 180 {
			val = h_val - m_val
		} else {
			val = 360 - h_val + m_val
		}
	}
//fmt.Println(val)
	c2 = float64(a*a + b*b) - (float64(2*a*b)*math.Cos(val/90 * (math.Pi/2)))
	fmt.Println(math.Sqrt(c2))
}
