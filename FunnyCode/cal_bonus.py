#! /usr/bin/env python
# calculate the one year final bonus

import sys

bonus_num = float(raw_input("Enter your bonus:"))
#print bonus_num

tax_base = bonus_num / 12.0
remain_num = 0
tax_rate = 0

if tax_base < 1500:
	tax_rate = 0.03
	remain_num = 0
elif tax_base >= 1500 and tax_base < 4500:
	tax_rate = 0.1
	remain_num = 105
elif tax_base >= 4500 and tax_base < 9000:
	tax_rate = 0.2
	remain_num = 555
elif tax_base >= 9000 and tax_base < 35000:
	tax_rate = 0.25
	remain_num = 1005
elif tax_base >= 35000 and tax_base < 55000:
	tax_rate = 0.3
	remain_num = 2755
elif tax_base >= 55000 and tax_base < 80000:
	tax_rate = 0.35
	remain_num = 5505
elif tax_base >= 80000:
	tax_rate = 0.45
	remain_num = 13505

#print "Your tax_rate is %f" % tax_rate, "your remain_num is %f" % remain_num

tax_num = 0
tax_num = bonus_num * tax_rate - remain_num
print "Your tax_num is %f" % tax_num
