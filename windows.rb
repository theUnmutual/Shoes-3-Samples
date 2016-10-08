#WINDOWS TEST
#
#Shows how to launch a window which affects the main Shoes app. 

Shoes.app do

	var = "
	"
	stack do
	
		p = para "hello!"
	
		button "Open a window" do
		
			window do               #this window has to be in the same stack as the para we are going to change. 
			
			
			
				edit_line do |line|
				var = line.text
				end
				
				button "change" do
				p.replace "#{var}"
				close
				end
	
			end
			
			
		end
	
	
	
	end


end
