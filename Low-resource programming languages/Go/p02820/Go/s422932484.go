// DPかと構えるもべつにそんなことはない K個前をみて同じだったら+0点
package main
import "fmt"
func main(){
	var N, K int
	var R, S, P int
	var T string
	fmt.Scan(&N, &K, &R, &S, &P, &T)
	TT := make([]string, N)
	ans := 0
	for i, c := range []rune(T){
		TT[i] = string(c)
	}
	for i:=K; i<N; i++{
		if TT[i-K] == TT[i]{
			TT[i] = "死"
		}
	}
	for _, c := range TT{
		switch c{
		case "r":
			ans += P
		case "p":
			ans += S
		case "s":
			ans += R
		}
	}
	
	fmt.Println(ans)
}