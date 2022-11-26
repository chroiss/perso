#!/usr/bin/env ruby
auth='ABCD'                          # Authority
idn='12345'                          # Random Number
b_date=['01','01','88'].reverse.join # Date of birth 01.01.1988
d_date=['01','01','25'].reverse.join # Due date 01.01.2025
def calc rx
  sum,i,digit,mx=0,0,0,0
  rx.each_char do |x|
    (x.match?(/[[:alpha:]]/))?digit=(x.ord)-55:digit=x
    if i%3==0;mx=7 elsif i%3==1;mx=3 else mx=1 end
    i+=1 and sum=sum+digit.to_i*mx
  end
  return sum%10
end
id=(auth+idn)+calc(auth+idn).to_s
bdate=b_date+calc(b_date).to_s
ddate=d_date+calc(d_date).to_s
check=calc(id+bdate+ddate)
puts "Your generated ID: #{id} #{bdate} #{ddate+'D'} #{check}"
