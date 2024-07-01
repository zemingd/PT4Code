package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	v, _ := strconv.Atoi(read())
	return v
}

func main() {
	sc.Split(bufio.ScanWords)
	var sum, max int

	times := make([]int, 5) //var times = []int{}
	for i := 0; i < 5; i++ {
		times[i] = nextInt()

		d := times[i] % 10
		// if d != 0 && d < lastTime {
		// 	lastTime = d
		// 	lasti = i
		// }
		if i == 0 {
			max = times[i] % 10 //最初の料理を仮に最後に注文する料理とする
		}
		if d == 0 {
			sum += times[i]
		} else {
			sum += times[i] + (10 - d)
			//times[i]=19なら19+(10-(19%10))で10分単位の切り上げが可能
		}

		if d != 0 && (10-d) > (10-max) { //maxより10分単位へ切り上げる際の値が大きい場合は、それをmaxとする
			max = times[i] % 10
		}

	}

	if max == 0 { //注文した料理が全て10分単位で注文可能な場合
		fmt.Println(sum)
	} else { //そうでない場合は、合計値から切り上げた分を引く
		fmt.Println(sum - (10 - max))
	}
}
