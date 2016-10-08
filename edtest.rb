Shoes.app do
para "Enter your name:"
edit_line.change {|slf| VIEWER.name = slf.text}		#FUCKIN WORKS, but still prints out the location of the editline :()
	end