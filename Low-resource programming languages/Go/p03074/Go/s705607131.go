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
    ans, flag := 0.0, false
    for i:=0;i<len(s);i++{
        if(s[i] == 48 && !flag){
            ans = math.Max(search(padding(s, i), K, now+1), ans)
            flag = true
        }else if s[i] == 49{
            flag = false
        }
    }
    return math.Max(ans, Count(s))
}

func padding(s string, index int) string{
    str := []byte(s)
    for i := index; i < len(s) && s[i] == 48; i++{
        str[i] = 49
    }
    return string(str)
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
