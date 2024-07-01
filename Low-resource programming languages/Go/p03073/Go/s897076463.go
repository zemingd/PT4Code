package main
import (
    "bufio"
    "fmt"
    "os"
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

func Abs(i int) int {
    if i >=0 {
        return i
    }
    return -i
}

func main(){
    s := readLine()
    initialColors := make([]int, len(s))
    for i, c := range s {
        initialColors[i] = int(c - '0')
    }
    // fmt.Println(initialColors)
    
    candidate1 := make([]int, len(s))
    candidate2 := make([]int, len(s))
    candidates := [][]int{candidate1, candidate2}
    var firstColor int
    for _, cand := range candidates {
        for i, _ := range cand {
            cand[i] = (firstColor + i) % 2
        }
        firstColor = (firstColor + 1) % 2
    }
    // fmt.Println(candidates)
    
    distances := make([]int, 2)
    for i, cand := range candidates {
        for j, c := range cand {
            distances[i] += Abs(c - initialColors[j])
        }
    }
    // fmt.Println(distances)
    
    if distances[0] < distances[1] {
        fmt.Println(distances[0])
    } else {
        fmt.Println(distances[1])
    }
}
