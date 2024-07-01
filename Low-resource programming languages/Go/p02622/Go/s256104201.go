package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scan(&s)
	fmt.Scan(&t)
	bs := []byte(s)
	bt := []byte(t)
	//fmt.Println(bt)
	var count int
	count = 0

	/*
		for i, _ := range s {
			ss = append(ss, string(s[i]))
		}
		for i, _ := range t {
			st = append(st, string(t[i]))
		}
	*/

	for i, _ := range bs {
		for j, _ := range bt {
			if bs[i] != bt[j] {
				count++
				return
				//fmt.Println(reflect.TypeOf(bs[i]), reflect.TypeOf(bt[j]))
				//fmt.Println(bs[i], bt[j])
				//fmt.Println(reflect.TypeOf(v), reflect.TypeOf(n))
			}
		}
	}
	fmt.Println(count)
	//fmt.Println(ss)
}

// sをtに変える: 二重ループでもじ判定して書き換えた回数分カウント変数
