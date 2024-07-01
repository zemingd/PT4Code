package main
import "fmt"
func main(){
    // Your code here!
    var k int64
    fmt.Scan(&k)
    

    var x,y,z,sum int64
    sum = 0
    for x = 1; x <= k; x++{
        for y = 1; y <= k; y++{
            for z = 1; z <= k; z++{
                sum = sum + gcd(gcd(z,y),x)
            }
        }
    }
    fmt.Println(sum)
}

func gcd(a int64, b int64) int64{
    var t int64
    if a < b{
        t = b
        b = a
        a = t
    }
    for ;;{
        if a % b == 0{
            return b
        }else{
            t = a
            a = b
            b = t % b
        }
    }
}