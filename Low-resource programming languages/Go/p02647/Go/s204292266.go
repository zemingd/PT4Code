package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

// 1行読み込み
func nextLine() string {
	sc.Scan()
	return sc.Text()
}

// 読み込みをint型へキャスト
func nextInt() int {
	sc.Scan()
	num, err := strconv.Atoi(sc.Text())
	if(err != nil) {
		panic(err)
	}
	return num
}

func main() {
	// scannerの挙動を改行区切り → 空白区切りに変更
	sc.Split(bufio.ScanWords)
	n, k := nextInt(), nextInt()
	list := make([]int, 0, n)
	
	for i := 0; i < n; i++ {
		list = append(list, nextInt())
	}
	
	shine := make([]int, n, n)
	shine = list
	
	for m := 0; m < k; m++ {
		next_list := make([]int, n, n)
		for i, num := range shine {
			next_list[i] += 1
			if num > 0 {
				for l := 1; l <= num; l++ {
					if i - l >= 0 {
						next_list[i - l] += 1
					}
					if i + l < len(next_list) {
						next_list[i + l] += 1
					}
				}
			}
		}
		shine = next_list
	}
	
	str_list := make([]string, 0, n)
	for o := 0; o < n; o++ {
		str_list = append(str_list, strconv.Itoa(shine[o]))
	}

	for o := 0; o < n; o++ {
		if o == n - 1 {
			fmt.Print(strconv.Itoa(shine[o]) + "\n")
		} else {
			fmt.Print(strconv.Itoa(shine[o]) + " ")
		}
	}
	// fmt.Println(strings.Join(str_list, " "))
}