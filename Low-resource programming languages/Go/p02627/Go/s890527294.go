package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

// スライス内に指定した要素があるか判定
// 第1引数 : 要素, 第2要素 : スライス
// return : result, err
func contains(target interface{}, list interface{}) (bool, error) {
	switch list.(type) {
		case []int:
			revert := list.([]int)
			for _, r := range revert {
				if target == r {
					return true, nil
				}
			}
			return false, nil
			
		case []uint64:
			revert := list.([]uint64)
			for _, r := range revert {
				if target == r {
					return true, nil
				}
			}
			return false, nil
			
		case []string:
			revert := list.([]string)
			for _, r := range revert {
				if target == r {
					return true, nil
				}
			}
			return false, nil
		default:
			return false, fmt.Errorf("%v is an unsupported type", reflect.TypeOf(list))
	}

	return false, fmt.Errorf("processing failed")
}

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

// 読み込みをfloat型へキャスト
func nextFloat() float64 {
	sc.Scan()
	num, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		panic(err)
	}
	return num
}

func main() {
	// scannerの挙動を改行区切り → 空白区切りに変更
	sc.Split(bufio.ScanWords)
	str := []byte(nextLine())
	var out_str string
	for i := 65; i <= 90;i++ {
		if int(str[0]) == i {
			out_str = strings.ToLower(string(str[0]))
			fmt.Println(string(str[0]))
			return
		}
	}
	out_str = strings.ToUpper(string(str[0]))
	fmt.Println(out_str)
}