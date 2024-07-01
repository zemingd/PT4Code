package main

import (
	"bufio"
	"fmt"
	"os"
)


func main()  {
	var N int
	var robots = make(map[int]int, N)
	var N1 = [1]int{N}
	r := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()
	fmt.Fscan(r, &N)
	for  N1[0] > 0 {
		var a,b int
		fmt.Fscan(r,&a,&b)
		robots[a] = b
		N1[0] --
	}
	old_robot := -(10^10)
	rem := 0
	for robot1,robot2:=range robots  {
		lefts  := robot1 - (robot2 - robot1)
		if  old_robot > lefts{
			//fmt.Println(robot1,"はかぶりです。\n左端が",lefts,"前の右が",old_robot,"なので")
			rem ++
			old_robot = - (10 ^ 10)
		} else {
			//fmt.Println("OK")
			old_robot = robot1 + robot2 - 1
		}
	}
	var anser int
	anser = N - rem
	fmt.Println(anser)
}
