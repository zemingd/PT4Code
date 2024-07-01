package main
import (
    "fmt"
    "math"
)

func main(){
    var N, K int
    var s string
    fmt.Scan(&N, &K, &s)
    fmt.Println(search(s, K, 0))
}

func search(s string, K, now int) float64{
    if K == now{
        return Count(s)
    }
    ans := 0.0
    for i:=0;i<len(s);i++{
        if(s[i] == 48){
            str, n := padding(s, i)
            ans = math.Max(search(str, K, now+1), ans)
            i = n - 1
        }
    }
    return math.Max(ans, Count(s))
}

func padding(s string, index int) (string, int){
    str, n := []byte(s), 0
    for i := index; i < len(s) && s[i] == 48; i,n = i+1,n+1{
        str[i] = 49
    }
    return string(str), index+n
}

func Count(s string) float64{
    ans := 0.0
    flag := false
    n := 0.0
    for i:=0;i<len(s);i++{
        if s[i] == 49{
            n ++
            flag = true
        }else if flag{
            ans = math.Max(ans, n)
            n, flag = 0, false
        }
    }
    return math.Max(ans, n)
}
