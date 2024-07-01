// すべてが奇数になってしまったら終了
// 毎回どれか偶数1つだけを2で割る -> 素因数2の数

package main
import "fmt"
func main(){
	var N int
	fmt.Scan(&N)
	ans := 0
	for i:=0; i<N; i++{
		var V int
		fmt.Scan(&V)
		for V>0 && V%2==0{
			V/=2
			ans++
		}
	}
	fmt.Println(ans)
}