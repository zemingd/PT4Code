package main

import (
	"fmt"
	"sort"
)

func craetea2z() string {
	alphabet := make([]rune, 0)
	for cur := []rune("a"); ; cur[0] += 1 {
		alphabet = append(alphabet, cur[0])
		if string(cur[0]) == "z" {
			break
		}
	}
	return string(alphabet)
}

func main() {
	var s string
	fmt.Scan(&s)
	// 比較のためにsをsliceにせねばならん
	// 重複を殺しつつ
	d := make(map[string]string)
	ss := make([]string, 0)
	for _, vs := range []rune(s) {
		if _, ok := d[string(vs)]; !ok {
			d[string(vs)] = "もう見た"
			ss = append(ss, string(vs))
		}
	}
	sort.Strings(ss)
	// とりあえずアルファベット生成すりゃできんだろ
	alphabet := craetea2z()

	flag := false
	for i, v := range ss {
		if string(v) != string(alphabet[i]) {
			fmt.Println(string(alphabet[i]))
			flag = true
			break
		}
	}
	if !flag {
		fmt.Println("None")
	}
}
