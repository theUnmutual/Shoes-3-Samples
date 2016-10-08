#PROFILE TEST - DOESN'T WORK
#
#This app demonstrates how to create interlinked pages on Shoes.
#It's copied straight from the Nobody Knows Shoes book. 



class User										#create a user class

def initialize

	@name = "NO NAME SET"

end


end

user = User.new								#create a user


class Booklist < Shoes
	url '/',					:index
	url '/profile',		:profile
	url '/edit',			:edit									#i just learned that all methods are symbols. Are we creating emthods here?
	
	def index
		para "Welcome back!",
			link("Show my profile",	:click => "/profile"),
			link("Edit my profile", :click => "/edit")
	end
	
	def profile
		stack do
			title "Profile Page"
			para "Your name is #{user.name}"
			link("Go back.", :click => "/")
		end
	end
	
	def edit
		stack do
			title "Edit Page"
			para "Enter your name:"
				
				edit_line do |ed|
					@me.name = ed.text
				end
			button "done" do
					#makes user feel like they contributed
			end
								
			link("Go back.", :click => "/")
		end
	end
end

Shoes.app :width =>400, :height => 500