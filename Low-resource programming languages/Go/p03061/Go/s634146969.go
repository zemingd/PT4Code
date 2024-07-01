package main
import (
    "fmt"
    "sort"
    "math"
    "strconv"
)
var table = make(map[string]float64)
func main(){
    var n int
    fmt.Scan(&n)
    var num []int
    for i := 0; i<n; i++{
        var input int
        fmt.Scan(&input)
        num = append(num, input)
    }
    sort.Ints(num)
    ans := 0.0
    for i:=0; i<n; i++{
        if int(ans) > num[i]{
                continue
            }
        for j:=i+1; j<n;j++{
            if int(ans) > num[j]{
                continue
            }
            ans = math.Max(ans, gcd(num[i], num[j]))
        }
    }
    fmt.Printf("%d\n",int(ans))
}

func gcd(n, m int) float64{
    str := strconv.Itoa(n) + "_" + strconv.Itoa(m)
    if table[str] !=0{
        return table[str]
    }
    if m % n == 0{
        table[str]=float64(n)
        return table[str]
    }
    table[str] = gcd(m % n, n)
    return table[str]
}

