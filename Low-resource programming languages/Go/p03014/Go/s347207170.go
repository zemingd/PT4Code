package main

import (
    "fmt"
    "math"
    "bufio"
    "os"
)

func min(nums ...int) int {
    res := nums[0]
    for i := 0; i < len(nums); i++ {
        res = int(math.Min(float64(res), float64(nums[i])))
    }
    return res
}

func cnt(field [][]byte, ans [][]int) {

    var H = len(field)
    var W = len(field[0])
    for i := 0; i < H; i++ {
        var l = 0
        for j :=0; j < W; j++ {
            if field[i][j] != '#' {
                ans[i][j] += l
            }
            if field[i][j] == '#' {
                l = 0
            } else {
                l += 1
            }
        }
    }
}

func rot(field [][]byte) [][]byte {
    var H = len(field)
    var W = len(field[0])
    var res = make([][]byte, W)
    for i:= 0; i < W; i++ {
        res[i] = make([]byte, H)
    }
    for i := 0; i < H; i++ {
        for j := 0; j < W; j++ {
            res[j][H-i-1] = field[i][j]
        }
    }
    return res
}

func rot2(field [][]int) [][]int {
    var H = len(field)
    var W = len(field[0])
    var res = make([][]int, W)
    for i:= 0; i < W; i++ {
        res[i] = make([]int, H)
    }
    for i := 0; i < H; i++ {
        for j := 0; j < W; j++ {
            res[j][H-i-1] = field[i][j]
        }
    }
    return res
}

func main() {
    //cpuprofile := "mycpu.prof"
    //f, err := os.Create(cpuprofile)
    //if err != nil {
    //    log.Fatal(err)
    //}
    //pprof.StartCPUProfile(f)
    //defer pprof.StopCPUProfile()
    //

    var H, W int
    fmt.Scan(&H, &W)
    var ss[]string
    var reader = bufio.NewReader(os.Stdin)
    for i := 0; i < H; i++ {
        //fmt.Scan(&s)
        var s, _, _ = reader.ReadLine()
        ss = append(ss, string(s))
    }

    var field [][]byte
    for i := 0; i < H; i++ {
        var s []byte
        for j := 0; j < W; j++ {
            var c = ss[i][j]
            s = append(s, c)
        }
        field = append(field, s)
    }
    var ans = make([][]int, H)
    for i:= 0; i < H; i++ {
        ans[i] = make([]int, W)
    }

    for i := 0; i < 4; i++ {
        //fmt.Println("field")
        //
        //for t := 0; t < len(field); t++ {
        //    fmt.Println(field[t])
        //}
        //fmt.Println("ans")
        //for t := 0; t < len(ans); t++ {
        //    fmt.Println(ans[t])
        //}


        cnt(field, ans)
        field = rot(field)
        ans = rot2(ans)
    }

    //fmt.Println(ans)

    var t = 0
    for i := 0; i < H; i++ {
        for j := 0; j < W; j++ {
            if field[i][j] != '#' {
                t = int(math.Max(float64(t), float64(ans[i][j])))
            }
        }
    }
    fmt.Println(t + 1)

}