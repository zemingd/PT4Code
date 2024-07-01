package main

import (
	"fmt"
	// なぜかひとつだけWAになるためテストで出力あったらすぐ抜けるようにするため
)

func craetea2z() []string {
	alphabet := make([]string, 0)
	for cur := []rune("a"); ; cur[0] += 1 {
		alphabet = append(alphabet, string(cur[0]))
		if alphabet[len(alphabet)-1] == "z" {
			break
		}
	}
	return alphabet
}

func main() {
	var s string
	fmt.Scan(&s)
	// 比較のためにsをsliceにせねばならん
	// 重複を殺しつつ
	d := make(map[string]string)
	// とりあえずアルファベット生成すりゃできんだろ
	alphabet := craetea2z()

	for _, vs := range []rune(s) {
		if _, ok := d[string(vs)]; !ok {
			d[string(vs)] = "もう見た"
			// ss = append(ss, string(vs))
		}
	}
	for _, v := range alphabet {
		if _, ok := d[v]; !ok {
			fmt.Println(v)
			break
		} else if v == "z" {
			fmt.Println("None")
		}
	}
}
