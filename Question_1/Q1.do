import excel "C:\Users\hp\Desktop\End_Term_Project_ECO213\Question_1\scores_data.xlsx", sheet("Sheet1") firstrow

codebook course_result

codebook test_score

log using "C:\Users\hp\Desktop\Study Material (SNU)\Semester 5\ECO 213 - Basic Data Analysis and Econometrics\End_Term_Project\Question_1\Q1.log", replace

replace course_result="1" if course_result=="Pass"

replace course_result="0" if course_result=="Fail"

destring course_result, replace

list

reg course_result test_score

