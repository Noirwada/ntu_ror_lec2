#若要判斷是否為字串，透過轉換成ASCII去判斷!!!

#debugging
require 'pry'

#operator = ['1','2','3','4'];
def judgement()
	#num or not
	#transfer to ASCII
	begin
	    puts "請輸入第一個數字："
		input = gets.chomp;
		puts "請輸入第二個數字："
		input2 = gets.chomp;
		#puts (65<input.ord.to_i.to_int);
		#!((47<input.ord.to_i.to_int) && (input.ord.to_i.to_int<58) || (47<input2.ord.to_i.to_int) && (input2.ord.to_i.to_int<58))
 	end while ((57<input.ord.to_i.to_int) && (input.ord.to_i.to_int<127))|| ((57<input2.ord.to_i.to_int) && (input2.ord.to_i.to_int<127))
 		puts "您輸入的第一個數字為："+input+"  第二個數字為："+input2;
		calculation(input,input2);
=begin
	if(65<a.ord<123)
		puts "a is alphabet, input nummbers please!!";
		judgement();
	
	else
		if(65<b.ord<123)
			puts "b is alphabet, input nummbers please!!";
			judgement();
		else
			#if it's all num, calculate!
			puts "您輸入的第一個數字為："+a+"  第二個數字為："+b;
			calculation();
		end
	end
=end
end

def calculation(a,b)
	a = a.to_f;
	b = b.to_f;

	puts "欲加總請按整數1；欲加總請按整數2；欲加總請按整數3；欲加總請按整數4";

	case gets.chomp.to_i;
	when 1 then return (a + b);
	when 2 then return (a - b);
	when 3 then return (a * b);
	when 4 then return (a / b);
	end
end

#main 
string = "歡迎來到天才小計算機，請輸入兩個預計算的數字！！";

#puts string;
#puts "請輸入第一個數字："
#input = gets.chomp;
#puts "請輸入第二個數字："
#input2 = gets.chomp;


#judge by func
result = judgement();
puts result;