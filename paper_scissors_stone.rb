#debugging
require 'pry'

def judgement(a)

	#random choose by computer
	comp_choi = rand(1..3);
	case comp_choi;
		when 1 then puts 'Ur enemy choose scissors to attack u!!';
		when 2 then puts 'Ur enemy choose stone to attack u!!';
		when 3 then puts 'Ur enemy choose paper to attack u!!';
	end
	#puts "Ur enemy choose " + choice[:(comp_choi)] + " to attack u!!"

	#win or lose
	result = 0;
	result = a - comp_choi;
	if (result == 1 || result == -2)
		puts "Congratulation!! U win!!"
	elsif (result == -1 || result == 2)
		puts "Unfortuatelly, U lose!!"
	else
		puts "End in a Tie, play again!!"	
		judgement(user_choice());#not sure
	end

end

def user_choice()
	#user choice
	puts "please choose which(1)scissors (2)stone (3)paper u want output~~"

	#whar u choose
	u_choice = gets.chomp.to_i; #not sure
	case u_choice;
		when 1 then puts 'U choose scissors to resist!!';
		when 2 then puts 'U choose stone to resist!!';
		when 3 then puts 'U choose paper to resist!!';
	end

	return u_choice
	
end

#-----main program-----#
#variable define
choice = { 
	:scissors => 1 , 
    :stone => 2 ,
    :paper => 3 
}
#puts choice[:'1']; #can't do this

puts "welcome to 'paper_scissors_stone' game!!"

#user_choi
input = 0;
input = user_choice();

#go to judge
judgement(input);

=begin
	input;
	case gets.chomp;
		when 'scissors' then return choice[:scissors];
		when 'stone' then return choice[:stone];
		when 'paper' then return choice[:paper];
	end
=end




