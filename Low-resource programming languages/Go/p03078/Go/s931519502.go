package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

type Grade struct {
	grade int
	x     int
	y     int
	z     int
}

func NewGrade(grade, x, y, z int) Grade {
	return Grade{
		grade: grade,
		x:     x,
		y:     y,
		z:     z,
	}
}
func (g *Grade) Key() string {
	return fmt.Sprintf("%d-%d-%d", g.x, g.y, g.z)
}

type GradeList struct {
	list []Grade
}

func NewGradeList() GradeList {
	return GradeList{
		list: []Grade{},
	}
}

func (gl *GradeList) Pop() Grade {
	var head = gl.list[0]
	gl.list = gl.list[1:]

	return head
}
func (gl *GradeList) Push(grade Grade) {
	gl.list = append(gl.list, grade)
}

func (gl *GradeList) Len() int {
	return len(gl.list)
}
func (gl *GradeList) Less(i, j int) bool {
	return gl.list[i].grade > gl.list[j].grade
}
func (gl *GradeList) Swap(i, j int) {
	var temp = gl.list[i]
	gl.list[i] = gl.list[j]
	gl.list[j] = temp
}

func (gl *GradeList) Normalize() {
	var m = map[string]Grade{}
	for _, g := range gl.list {
		m[g.Key()] = g
	}

	var list = []Grade{}
	for _, value := range m {
		list = append(list, value)
	}

	gl.list = list

	sort.Sort(gl)
}

func main() {
	var x, y, z, k int
	fmt.Scan(&x, &y, &z, &k)

	scanner := bufio.NewScanner(os.Stdin)
	var as []int = scanAndParse(scanner, x)
	var bs []int = scanAndParse(scanner, y)
	var cs []int = scanAndParse(scanner, z)

	sort.Sort(sort.Reverse(sort.IntSlice(as)))
	sort.Sort(sort.Reverse(sort.IntSlice(bs)))
	sort.Sort(sort.Reverse(sort.IntSlice(cs)))

	var found = map[string]bool{}
	for i, _ := range as {
		for j, _ := range bs {
			for l, _ := range cs {
				found[fmt.Sprintf("%d-%d-%d", i, j, l)] = false
			}
		}
	}

	var grades = NewGradeList()
	grades.Push(Grade{as[0] + bs[0] + cs[0], 0, 0, 0})

	for i := 0; i < k; i++ {
		var grade = grades.Pop()
		fmt.Println(grade.grade)

		if (len(as) > grade.x+1) && !found[fmt.Sprintf("%d-%d-%d", grade.x+1, grade.y, grade.z)] {
			grades.Push(NewGrade(as[grade.x+1]+bs[grade.y]+cs[grade.z], grade.x+1, grade.y, grade.z))
			found[fmt.Sprintf("%d-%d-%d", grade.x+1, grade.y, grade.z)] = true
		}
		if (len(bs) > grade.y+1) && !found[fmt.Sprintf("%d-%d-%d", grade.x, grade.y+1, grade.z)] {
			grades.Push(NewGrade(as[grade.x]+bs[grade.y+1]+cs[grade.z], grade.x, grade.y+1, grade.z))
			found[fmt.Sprintf("%d-%d-%d", grade.x, grade.y+1, grade.z)] = true
		}
		if (len(cs) > grade.z+1) && !found[fmt.Sprintf("%d-%d-%d", grade.x, grade.y, grade.z+1)] {
			grades.Push(NewGrade(as[grade.x]+bs[grade.y]+cs[grade.z+1], grade.x, grade.y, grade.z+1))
			found[fmt.Sprintf("%d-%d-%d", grade.x, grade.y, grade.z+1)] = true
		}

		grades.Normalize()
	}
}

func scanAndParse(scanner *bufio.Scanner, length int) []int {
	scanner.Scan()

	var result = make([]int, length)
	for i, t := range strings.Split(scanner.Text(), " ") {
		a, _ := strconv.Atoi(t)
		result[i] = a
	}

	return result
}
