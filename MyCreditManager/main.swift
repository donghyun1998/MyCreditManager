//
//  main.swift
//  MyCreditManager
//
//  Created by 동현 on 2023/04/23.
//

import Foundation

enum   Grade: Float
{
    case aplus = 4.5
    case a     = 4
    case bplus = 3.5
    case b     = 3
    case cplus = 2.5
    case c     = 2
    case dplus = 1.5
    case d     = 1
    case f     = 0
}

var Subject : (String, String) = ("dummy", "F")

class Student
{
//    let name: String
//    var grades: String
    var student_record: Dictionary<String, String> = Dictionary<String, String>()
    
    init(subject: String, grade: String)
    {
        student_record[subject] = grade
    }
}

func    x_cmd()
{
    print("프로그램을 종료합니다...")
    exit(0)
}

func    add_student(students: Array<Student>)
{
    while (true)
    {
        let name = readLine()
        if let str = name
        {
        }
        else
        {
            print("입력이 잘못되었습니다. 다시 확인해주세요.")
            break
        }
        if
        
    }
}
var students: [Student] = []
while (true)
{
    print("원하는 기능을 입력해주세요")
    print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
    let input = readLine()
    
    switch input
    {
        case "1":
            add_student(students)
        case "2":
            print("학생삭제")
        case "3":
            print("성적추가(변경)")
        case "4":
            print("성적삭제")
        case "5":
            print("평점보기")
        case "X":
            x_cmd()
        default:
            print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
    }
}
