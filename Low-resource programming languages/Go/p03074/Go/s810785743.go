package main
import (
    "fmt"
    "math"
)

var memo [20000]int

func main(){
    var N, K int
    var s string
    fmt.Scan(&N, &K, &s)
    fmt.Println(search(s, K))
}

func search(s string, K int) float64{
    ans, co := 0.0, 0.0
    for i:=0;i<len(s);i++{
        if s[i] == 48 {
            count := padding(s, K, i, co)
            ans = math.Max(count, ans)
            co, i = 0, i+memo[i]
        }else{
            co ++
        }
    }
    return math.Max(ans, co)
}

func padding(s string, K, index int, co float64) (float64){
    n :=  index
    for i, flag:= index, false; i < len(s) &&!(K == 0 &&s[i]== 48);i++{
        if memo[i] != 0{
            fmt.Println(i, memo[i], K)
            co +=float64(memo[i])
            i += memo[i] -1
            K--
            continue
        }
        if s[i] == 49 && !flag{
            K--
            flag = true
        }else if s[i] == 48 && flag{
            flag = false
            memo[n] = i - n
            n = i
        }
        co ++
    }
    return co
}
