//ex 7 5 3 1 1 3 5 7 -> 同じ数は入れ替え可能 2^(N/2)
// 奇数のとき N=7だと 6 4 2 0 2 4 6 2^((N-1)/2)
package main
import "fmt"
func main(){
	var  N int
	MOD := int(1e9)+7
	fmt.Scan(&N)
	M := make(map[int]int)
	for i:=0; i<N; i++{
		var V int
		fmt.Scan(&V)
		M[V]++
	}
	if N%2==0{
		for i:=1; i<=N-1; i+=2{
			if M[i]!=2{
				fmt.Println(0)
				return
			}
		}
		if len(M)*2 !=N{
			fmt.Println(0)
			return
		}
		fmt.Println(powMod(2, N/2, MOD))
	}else{
		for i:=2; i<=N-1; i+=2{
			if M[i]!=2{
				fmt.Println(0)
				return
			}
		}
		if M[0]!=1{
			fmt.Println(0)
			return
		}
		if len(M)*2-1 !=N{
			fmt.Println(0)
			return
		}
		fmt.Println(powMod(2, (N-1)/2, MOD))
	}
}

func powMod(a, x, mod int)int{
	if x == 0{
		return 1
	}
	ret := 1
	for x > 0{
		ret *= a
		ret %= mod
		x--
	}
	return ret
}