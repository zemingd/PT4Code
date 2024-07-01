package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"strconv"
	"sort"
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
	n := nextInt()
	k := nextInt()
	price := make([]int, 0, n)
	for i := 0; i < n; i++ {
		price = append(price, nextInt())
	}
	// sort.Sort(price)
	sort.Slice(price, func(i, j int) bool { return price[i] < price[j] })
	
	sum := 0
	for m := 0; m < k; m++ {
		sum += price[m]
	}
	fmt.Println(sum)
}