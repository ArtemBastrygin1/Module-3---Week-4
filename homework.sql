-- Вывести идентификаторы курсов (предметов).
SELECT courseid FROM course

-- Вывести всю информацию о курсах (предметах).
SELECT * FROM course

-- Вывести идентификатор курса с названием "Machine Learning".
SELECT courseid FROM course WHERE coursetitle = 'Machine Learning'

-- Вывести название курса с идентификатором 5.
SELECT coursetitle FROM course WHERE courseid = 5

-- Вывести список мобильных телефонов (PhoneType = 'cell') из таблицы "PHONE_LIST".
SELECT phone FROM phone_list WHERE phonetype = 'cell'

-- Вывести количество отметок, которое получил студент с идентификатором (номером зачетки) 345576.
SELECT COUNT(grade) FROM exam_result WHERE studentid = 345576

-- Вывести номера зачеток (идентификаторы студентов) и средние баллы, которые получили студенты за все экзамены.
SELECT studentid, AVG(grade) FROM exam_result GROUP by studentid

-- Вывести минимальный и максимальный баллы, полученные студентами на экзаменах.
SELECT min(grade), max(grade) FROM exam_result

-- Найти пересечение идентификаторов студентов, получавших и 2, и 5. Каждый идентификатор из пересечения должен встречаться не более одного раза:
SELECT studentid FROM exam_result WHERE grade = 2
INTERSECT
SELECT studentid FROM exam_result WHERE grade = 5

-- Найти объединение идентификаторов студентов, у которых есть хоть одна 2 и/или хоть одна 5. Каждый идентификатор из пересечения должен встречаться не более одного раза:
SELECT studentid FROM exam_result WHERE grade = 2
UNION
SELECT studentid FROM exam_result WHERE grade = 5


