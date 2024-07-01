package main
import (
    "fmt"
    "math"
)

var zero = make(map[int]int)
var one  = make(map[int]int)

func main(){
    var N, K int
    var s string
    fmt.Scan(&N, &K, &s)
    fmt.Println(search(s, N, K))
}

func search(s string,N,  K int) float64{
    padding(s, N, K)
    ans, count := 0.0, 0
    memoLength := int(math.Max(float64(len(one)), float64(len(zero))))
    for i:=0;i<= memoLength-K;i++{
        if s[0] == 49 && i == 0{
            count += one[K] + zero[K]
        }
        if i == 0{
            for j:=0; j<K && i+j<memoLength;j++{
                count += zero[i+j] + one[i+j]
            }
        } else{
            count += zero [i+K] + one[i+K] - zero[i] - one[i-1]
        }
        
        ans = math.Max(ans, float64(count))
        // fmt.Println(count, ans)
    } 
    return ans
}

func padding(s string,N, K int){
    for i, now:= 0, 0; now < len(s);i++{
        for now < len(s) && s[now] == 48{
            zero[i]++
            now ++
        }
        for now < len(s) && s[now] == 49{
            one[i]++
            now ++
        }
    }
}
