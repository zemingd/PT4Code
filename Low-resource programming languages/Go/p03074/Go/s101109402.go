package main
import (
    "fmt"
    "math"
)

var zero = make(map[int]float64)
var one  = make(map[int]float64)

func main(){
    var N, K int
    var s string
    fmt.Scan(&N, &K, &s)
    fmt.Println(search(s, N, K))
}

func search(s string, N, K int) float64{
    padding(s, N, K)
    var ans, count float64
    for i, n:=0, 1; i<=len(zero); i++{
        if i == 0{
            if s[0] == 49 {
                count += one[K] + zero[K]
                n = 0
            }
            for j:=0; j<K; j++{
                count += zero[i+j] + one[i+j]
            }
        } else {
            count += zero [i+K-n] + one[i+K-n] - zero[i-n] - one[i-1-n]
        }
        
        ans = math.Max(ans, count)
    } 
    return ans
}

func padding(s string, N, K int){
    for i, now:= 0, 0; now<N; i++ {
        for now < N && s[now] == 48{
            zero[i]++
            now ++
        }
        for now < N && s[now] == 49{
            one[i]++
            now ++
        }
    }
}
