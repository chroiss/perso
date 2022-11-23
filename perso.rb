#!/usr/bin/env ruby
auth='ABCD'             # Authority
idn='12345'             # Random Number
b_date='010188'.reverse # Date of birth 01.01.1988
d_date='010125'.reverse # Due date 01.01.2025
def calc rx
  sum,i=0,0
  rx.each_char do |x|
    digit,mx=0,0
    (x.match?(/[[:alpha:]]/))?digit=(x.ord)-64+9:digit=x
    if i%3==0;mx=7 elsif i%3==1;mx=3 else mx=1 end
    i=i+1 and sum=sum+digit.to_i*mx
  end
  return sum%10
end
id_number=auth+idn
id=id_number+calc(id_number).to_s
bdate=b_date+calc(b_date).to_s
ddate=d_date+calc(d_date).to_s+'D' # D=Germany
check=calc(id+bdate+ddate[0...ddate.length-1])
puts "Your New ID: #{id} #{bdate} #{ddate} #{check}"
