package main

import "fmt"

func transPort(currentNumber *[6]int, canTrasnportNum *[5]int) {
	for index, current := range currentNumber {
		if current == 0 || index == 0 {
			continue
		}
		//輸送した人
		if current-canTrasnportNum[index-1] <= 0 {
			//全員輸送
			currentNumber[index] = 0
			currentNumber[index-1] += current
		} else {
			//一部輸送
			currentNumber[index] = current - canTrasnportNum[index-1]
			currentNumber[index-1] += canTrasnportNum[index-1]
		}

	}
}

func main() {
	var n, a, b, c, d, e int
	//逆順にんする0がゴール 4がスタート。
	result := 0
	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &a)
	fmt.Scanf("%d", &b)
	fmt.Scanf("%d", &c)
	fmt.Scanf("%d", &d)
	fmt.Scanf("%d", &e)
	canTrasnportNum := &[5]int{e, d, c, b, a}
	curentNumber := &[6]int{0, 0, 0, 0, 0, n}
	for curentNumber[0] != n {
		transPort(curentNumber, canTrasnportNum)
		result = result + 1
	}
	fmt.Printf("%d", result)
	//修理条件は、けつの人数が、nと一致したかどうか。
	//輸送だよね、場所で人がいるかどうかみる、後ろからやるしかない。
}
