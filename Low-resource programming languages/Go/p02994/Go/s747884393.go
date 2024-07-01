package main
import (
    "bufio"
    "fmt"
    "math"
    "os"
    "strings"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
    if sc.Scan() {
        ret, _ := strconv.Atoi(sc.Text())
        return ret
    }
    return 0
}

func readLine() string {
    var ret string
    if sc.Scan() {
        ret = sc.Text()
    }
    return ret
}

func main(){
    s := readLine()
    params := strings.Split(s, " ")
    n, _ := strconv.Atoi(params[0])
    l, _ := strconv.Atoi(params[1])
    
    nSum := (l - 1) * n + n * (n + 1) / 2
    minAbsFlavor := int(math.Abs(float64(l)))
    for i := 1; i <= n; i++ {
        if flavor := l + i - 1; int(math.Abs(float64(flavor))) < int(math.Abs(float64(minAbsFlavor))) {
            minAbsFlavor = flavor
        }
    }
    result := nSum - minAbsFlavor
    fmt.Println(result)
}
