package main

import "fmt"

/*
あなたは、 500 円玉を A 枚、 100 円玉を B 枚、 50 円玉を C
枚持っています。 
 これらの硬貨の中から何枚かを選び、
 合計金額をちょうど X円にする方法は何通りありますか。
同じ種類の硬貨どうしは区別できません。
2 通りの硬貨の選び方は、
ある種類の硬貨についてその硬貨を選ぶ枚数が異なるとき区別されます。
*/
func main() {
	var a, b, c, x int
	fmt.Scan(&a, &b, &c, &x)
	ans := 0
	
	for i := 0; i <= a; i++ {
	  for j := 0; j <= b; j++ {
	    for k := 0; k <= c; k++ {
				if (500 * a + 100 * b + 50 * c == x) {
					ans++
				}
			}
		}
	}
	fmt.Println(ans)

}
