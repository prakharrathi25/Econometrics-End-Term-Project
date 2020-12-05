log using "C:\Users\hp\Desktop\Econometrics-End-Term-Project\Question_2\Q2(1).log", replace
use "C:\Users\hp\Desktop\Econometrics-End-Term-Project\Question_2\EAWE22.dta", clear
codebook ASVABC SM SF MALE
reg S ASVABC SM SF MALE
vif
reg ASVABC SM SF MALE
reg SM ASVABC SF MALE
reg SF SM ASVABC MALE
reg MALE SF ASVABC SM
reg SM SF
correlate ASVABC SM SF
gen MALEASVC = MALE*ASVABC
reg S ASVABC SM SF ETHBLACK ETHHISP MALE MALEASVC
vif
log close
