Rails.application.routes.draw do
#Not worth the jail time
	#We need a resource to manage things easier 	
	resources :students
	#Register right at home..
	root :to => redirect('/students/new')
	#GET defined 
  get 'marks/result'
end
